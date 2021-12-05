import express from "express";
import { checkWebsite } from "./../controllers/pa11yController";

const router = express.Router();

router.route("/").get(checkWebsite);

export default router;
