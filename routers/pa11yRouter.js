const router = require("express").Router();
const pa11yController = require("./../controllers/pa11yController");

router.route("/").get(pa11yController.checkWebsite);

module.exports = router;
