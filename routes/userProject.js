const express = require("express");

const router = express.Router();
const { connection } = require("../config");

router.get("/:id", (req, res) => {
  connection.query(
    "SELECT u.name AS user_name, u.url_photo, u.email, u.discord_link AS user_discord_link, p.name AS project_name, p.status, p.description, p.image, p.discord_link AS project_discord_link, p.image FROM user AS u LEFT JOIN user_project AS up ON u.id = up.fk_user_id LEFT JOIN project AS p ON p.id = up.fk_project_id WHERE u.id =" +
      req.params.id,
    (err, results) => {
      if (err || results.length === 0) {
        console.log(err);
        res.status(500).send("Error retrieving data");
      } else {
        res.status(200).json(results);
      }
    }
  );
});

module.exports = router;
