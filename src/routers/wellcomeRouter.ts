import express, { Request, Response, NextFunction } from "express";
import catchAsync from "../utils/catchAsync";
const router = express.Router();

router.get(
  "/",
  catchAsync(async (req: Request, res: Response, next: NextFunction) => {
    res.status(200).json({
      status: "success",
      message: "Welcome to Website Accessibility Tester by gadgetvala",
    });
  })
);

export default router;
