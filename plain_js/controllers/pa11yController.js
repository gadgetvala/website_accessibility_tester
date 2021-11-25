const pa11y = require("pa11y");
const AppError = require("./../utils/appError");
const catchAsync = require("./../utils/catchAsync");

exports.checkWebsite = catchAsync(async (req, res, next) => {
  if (!req.query.website)
    return next(new AppError("Please Provide Website in query", 400));

  const result = await pa11y(req.query.website);

  res.status(200).json({
    status: "success",
    data: result,
  });
});
