const express = require("express");

const router = express.Router();
const { connection } = require("../config");

router.get("/:id", (req, res) => {
  connection.query(
    `SELECT u.name AS user_name, u.url_photo, u.email, u.discord_link AS user_discord_link, p.name AS project_name, 
    p.status, p.description, p.image, p.discord_link AS project_discord_link, p.image, ma.url_photo AS machine_photo
    FROM user AS u 
    LEFT JOIN user_project AS up 
    ON u.id = up.fk_user_id 
    LEFT JOIN project AS p 
    ON p.id = up.fk_project_id 
    JOIN user_machine AS uma
    ON uma.fk_user_id=u.id
    JOIN machine AS ma 
    ON ma.id= uma.fk_machine_id
    WHERE u.id =?`,
    [req.params.id],
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

router.get("/", (req, res) => {
  connection.query(
    // `SELECT * FROM user,
    // competence.name AS competence_name,
    // ma.name AS machine_name, ma.pseudo, ma.description AS machine_description,
    // ma.url_photo, ma.video_link, ma.notice, ma.discord_link,
    // project.name AS project_name, project.status, project.description AS project_description, 
    // project.discord_link AS project_discord_link, project.image AS project_image,
    // pers.name AS personality_name, pers.url AS personality.url
    // JOIN user_competence AS ucomp
    // ON ucomp.fk_user_id = user.id
    // JOIN competence AS comp
    // ON comp.fk_competence_id=comp.id
    // JOIN user_personality AS upers
    // ON upers.fk_user_id=user.id
    // JOIN personality AS pers
    // ON upers.fk_personnality_id=pers.id
    // JOIN user_project AS upro
    // ON upro.fk_user_id=user.id
    // JOIN project 
    // ON upro.fk_project_id=project.id
    // JOIN user_machine AS uma
    // ON user.id=uma.fk_user_id
    // JOIN machine AS ma
    // ON ma.id=uma.fk_machine_id
    // `,


    // `SELECT u.id, u.name AS user_name, 
    // u.url_photo, u.email, u.discord_link AS user_discord_link, 
    // p.name AS project_name, p.status, p.description, 
    // p.image, p.discord_link AS project_discord_link, p.image,
    // per.name AS personality_name, per.url AS personality_url, 
    // competence.name AS competence_name
    // FROM user AS u 
    // JOIN user_project 
    // AS up ON u.id = up.fk_user_id 
    // JOIN project AS p ON p.id = up.fk_project_id
    // JOIN user_personality AS upe 
    // ON upe.fk_user_id=u.id
    // JOIN personality AS per
    // ON per.id=upe.fk_personality_id
    // JOIN user_competence AS u_comp
    // ON u_comp.fk_user_id=u.id
    // JOIN competence
    // ON u_comp.fk_competence_id=competence.id
    // `,

    `SELECT u.id, u.name AS user_name, 
    u.url_photo
    FROM user AS u
    `,
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
