const express = require("express");

const router = express.Router();

const projects = require("./projects");
const competences = require("./competences");
const users = require("./users");
const machines = require("./machines");
const projectMachineUser = require("./projectMachineUser");
const personality = require("./personality");
const userProject = require("./userProject");

router.use("/projects", projects);
router.use("/competences", competences);
router.use("/users", users);
router.use("/machines", machines);
router.use("/projectMachineUser", projectMachineUser);
router.use("/personalities", personality);
router.use("/userProjects", userProject);

module.exports = router;
