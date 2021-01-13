const express = require("express");
const connection = require("./config");

const port = 6000;

const app = express();

connection.connect(function (err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

app.use(express.json());

app.listen(port, () => {
  console.log(`Server is runing on ${port}`);
});
