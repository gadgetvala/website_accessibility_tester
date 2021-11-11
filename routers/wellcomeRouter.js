const router = require("express").Router();
const catchAsync = require("../utils/catchAsync");

router.get(
  "/",
  catchAsync(async (req, res, next) => {
    res.status(200).json({
      status: "success",
      message: "Welcome to Website Accessibility Tester by gadgetvala",
    });
  })
);

module.exports = router;
