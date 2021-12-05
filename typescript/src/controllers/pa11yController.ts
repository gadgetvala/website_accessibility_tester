import pa11y from "pa11y";
import AppError from "./../utils/appError";
import catchAsync from "./../utils/catchAsync";
import { Request, Response, NextFunction } from "express";

export const checkWebsite = catchAsync(
  async (req: Request, res: Response, next: NextFunction) => {
    if (!req.query.website)
      return next(new AppError("Please Provide Website in query", 400));

    const result = await pa11y(req.query.website.toString());

    res.status(200).json({
      status: "success",
      data: result,
    });
  }
);
