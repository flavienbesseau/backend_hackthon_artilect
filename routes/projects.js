const express = require("express");

const router = express.Router();
const { connection } = require("../config");

router.get("/", (req, res) => {
  connection.query(
    "SELECT p.id, p.name AS project_name, p.status, p.description, p.image, p.discord_link AS project_discord_link, p.image, m.url_photo FROM project AS p LEFT JOIN machine AS m ON m.id = p.fk_machine_id",
    (err, results) => {
      if (err || results.length === 0) {
        res.status(500).send("Error retrieving data");
      } else {
        res.status(200).json(results);
      }
    }
  );
});

module.exports = router;
