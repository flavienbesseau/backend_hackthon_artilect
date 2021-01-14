const express = require("express");

const router = express.Router();
const { connection } = require("../config");

router.get("/:id", (req, res) => {
  connection.query(
    "SELECT p.name AS project_name, p.status, p.description, p.image, p.discord_link AS project_discord_link, p.image, u.name AS user_name, u.url_photo, u.email, u.discord_link AS user_discord_link, m.name AS machine_name, m.pseudo, m.url_photo AS machine_url_photo, c.name AS competence_name, c.level, c.reward FROM project AS p LEFT JOIN user_project AS up ON p.id = up.fk_project_id LEFT JOIN user AS u ON u.id= up.fk_user_id LEFT JOIN machine AS m ON m.id=p.fk_machine_id LEFT JOIN project_competence AS pc ON p.id = pc.fk_project_id LEFT JOIN competence AS c ON c.id = pc.fk_competence_id WHERE p.id =" +
      req.params.id,
    // "SELECT p.name, p.status, p.description, p.discord_link, p.image, m.name AS machine_name, m.pseudo, m.url_photo FROM project AS p LEFT JOIN machine AS m ON m.id=p.fk_machine_id WHERE p.id =" +
    //   req.params.id,
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
