
router.use((req, res, next) => {
  console.log("A request is coming into example api...");
  next();
});

router.get("/sqlDemo", (req, res) => {
  const mysql = require('mysql');

  let con = mysql.createConnection({
    host: "localhost",
    user: "yourusername",
    password: "yourpassword"
  });
  let sql_cmd="";
  con.connect(function(err) {
        if (err) throw err;
        console.log("Connected!");
        con.query(sql_cmd, function (err, result) {
            if (err) throw err;
            console.log("Result: " + result);
        });
   });


   });
