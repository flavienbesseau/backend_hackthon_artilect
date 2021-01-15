const express = require("express");

const router = express.Router();
const { connection } = require("../config");

router.get("/", (req, res) => {
  connection.query("SELECT * from competence", (err, results) => {
    if (err || results.length === 0) {
      res.status(500).send("Error retrieving data");
    } else {
      res.status(200).json(results);
    }
  });
});

router.get("/user/:id", (req, res) => {
  connection.query(
    `SELECT competence.name AS competence_name, user.name AS user_name, user.id 
    FROM competence 
    JOIN user_competence AS uc
    ON uc.fk_competence_id=competence.id
    JOIN user
    ON user.id=uc.fk_user_id
  `,
   (err, results) => {
    if (err || results.length === 0) {
      res.status(500).send("Error retrieving data");
    } else {
      res.status(200).json(results);
    }
  });
});

module.exports = router;
