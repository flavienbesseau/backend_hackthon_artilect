const express = require("express");

const router = express.Router();

const projects = require("./projects");
const competences = require("./competences");
const machines = require("./machines");
const users = require("./users");
const projectMachineUser = require("./projectMachineUser");

router.use("/projects", projects);
router.use("/competences", competences);
router.use("/users", users);
router.use("/machines", machines);
router.use("/projectMachineUser", projectMachineUser);

module.exports = router;
