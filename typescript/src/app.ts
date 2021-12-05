// Global Import
import cors from "cors";
import xss from "xss";
import morgan from "morgan";
import helmet from "helmet";
import express from "express";
import compression from "compression";
import timeout from "connect-timeout";

// Local Import
import AppError from "./utils/appError";
import haltOnTimedout from "./utils/haltOnTimedout";
import globalErrorHandler from "./controllers/errorController";

// Routes
import wellcomeRouter from "./routers/wellcomeRouter";
import pa11yRouter from "./routers/pa11yRouter";

const app = express();

app.enable("trust proxy");

//Middleware
//Implement cors
app.use(cors());
// app.options("*", cors());

//set security HTTPS headers
app.use(helmet());

//Body parsser, reading  data from body into req.body
app.use(express.json({ limit: "1024kb" }));
app.use(express.urlencoded({ extended: true, limit: "1024kb" }));

// Data sanitization against XSS
// app.use(xss());

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

export default app;
