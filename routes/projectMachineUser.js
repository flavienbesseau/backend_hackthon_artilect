const express = require("express");

const router = express.Router();
const { connection } = require("../config");

router.get("/:id", (req, res) => {
  connection.query(
    "SELECT p.name, p.status, p.description, p.discord_link, p.image, m.name AS machine_name, m.pseudo, m.url_photo from project AS p LEFT JOIN machine AS m ON m.id=p.fk_machine_id WHERE p.id =" +
      req.params.id,
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
