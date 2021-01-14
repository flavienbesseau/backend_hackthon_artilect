const express = require("express");
const cors = require("cors");
const { connection } = require("./config");
const api = require("./routes");

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

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/api", api);

app.listen(port, () => {
  console.log(`Server is runing on ${port}`);
});
