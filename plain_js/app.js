// Global Import
const cors = require("cors");
const xss = require("xss-clean");
const morgan = require("morgan");
const helmet = require("helmet");
const express = require("express");
const compression = require("compression");
const timeout = require("connect-timeout");

// Local Import
const AppError = require("./utils/appError");
const haltOnTimedout = require("./utils/haltOnTimedout");
const globalErrorHandler = require("./controllers/errorController");

//Import Routes
const pa11yRouter = require("./routers/pa11yRouter");
const wellcomeRouter = require("./routers/wellcomeRouter");

const app = express();

app.enable("trust proxy");

//Middleware
//Implement cors
app.use(cors());
app.options("*", cors());

//set security HTTPS headers
app.use(helmet());

//Body parsser, reading  data from body into req.body
app.use(express.json({ limit: "1024kb" }));
app.use(express.urlencoded({ extended: true, limit: "1024kb" }));

// Data sanitization against XSS
app.use(xss());

// Compress the Output
app.use(compression());

// Logging Middleware
app.use(morgan("dev"));

// Check Server Timeout
app.use(timeout("20s"));
app.use(haltOnTimedout);

// ROUTES
app.use("/api/v1", wellcomeRouter);
app.use("/api/v1/pa11y", pa11yRouter);

//Handling unexpected routes
app.all("*", (req, res, next) => {
  next(new AppError(`Can't find ${req.originalUrl} on this server`, 500));
});

//Error handing in one central place
app.use(globalErrorHandler);

module.exports = app;
