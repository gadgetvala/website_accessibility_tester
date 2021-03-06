import app from "./app";
const PORT = process.env.PORT || 4000;

const server = app.listen(PORT, () => {
  console.log(`Server Is started at port ${PORT || 3000}`);
});

process.on("SIGTERM", () => {
  console.log("SIGTERM RECEIVED. Shuttig down gracefully.");
  server.close(() => {
    console.log("Process terminated");
  });
});
