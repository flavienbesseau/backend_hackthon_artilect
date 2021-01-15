const express = require("express");

const router = express.Router();

const projects = require("./projects");
const project = require("./project");
const competences = require("./competences");
const users = require("./users");
const machines = require("./machines");
const machine = require("./machine");
const projectMachineUser = require("./projectMachineUser");
const personality = require("./personality");
const userProject = require("./userProject");

router.use("/projects", projects);
router.use("/project", project);
router.use("/competences", competences);
router.use("/users", users);
router.use("/machines", machines);
router.use("/machine", machine);
router.use("/projectMachineUser", projectMachineUser);
router.use("/personalities", personality);
router.use("/userProjects", userProject);

module.exports = router;
