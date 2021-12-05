import { Request, Response, NextFunction } from "express";

export default function haltOnTimedout(
  req: Request,
  res: Response,
  next: NextFunction
) {
  if (!req.timedout) next();
}
