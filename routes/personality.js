const express = require("express");

const router = express.Router();
const { connection } = require("../config");

router.get("/", (req, res) => {
  connection.query("SELECT * from personality", (err, results) => {
    if (err || results.length === 0) {
      res.status(500).send("Error retrieving data");
    } else {
      res.status(200).json(results);
    }
  });
});

router.get("/user/:id", (req, res) => {
  connection.query(`
  SELECT personality.*,
  user.name AS user_name, user.id 
  FROM personality 
  JOIN user_personality AS up
  ON up.fk_personality_id=personality.id
  JOIN user
  ON user.id=up.fk_user_id
  `, (err, results) => {
    if (err || results.length === 0) {
      res.status(500).send("Error retrieving data");
    } else {
      res.status(200).json(results);
    }
  });
});


module.exports = router;
