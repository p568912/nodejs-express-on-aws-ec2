const express = require("express");
const app = express();
const port = 3000;

const mysql = require("mysql");

let con = mysql.createConnection({
  host: "localhost",
  user: "test",
  password: "Phx.202207",
  database: "test",
});

app.get("/", (req, res) => {
  let sql_cmd = "select * from users;";
  con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
    con.query(sql_cmd, function (err, result) {
      if (err) {
        throw err;
        console.log("Error: " + err);
        res.send("<h1>Acess DB failed</h1> <h4>{result}</h4>");
      }
      console.log("Result: " + result);
      res.send("<h1>Express Demo App</h1> <h4>Message: {result}</h4> ");
    });
  });
});

// app.get('/sqlDemo', (req, res) => {

// })

app.listen(port, () => {
  console.log(`Demo app is up and listening to port: ${port}`);
});
