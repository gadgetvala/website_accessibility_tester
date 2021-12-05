import { Request, Response, NextFunction } from "express";

export default (err: any, req: Request, res: Response, next: NextFunction) => {
  err.statusCode = err.statusCode || 500;
  err.status = err.status || "error";

  console.log(err);

  return res.status(err.statusCode).json({
    status: err.status,
    error: err,
    message: err.message,
  });
};
