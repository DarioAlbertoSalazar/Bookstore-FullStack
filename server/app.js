const mysql = require("mysql2");
const express = require("express");
const sqlLogin = require("./secrets.js");
var cors = require("cors");

const app = express();
app.use(cors());

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: sqlLogin,
  database: "storebooks",
});

connection.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL" + err.stack);
    return;
  }
});

app.get("/books", (req, res) => {
  connection.query("SELECT id,image  FROM books", (err, results) => {
    if (err) {
      console.error("Error excuting the query" + err.stack);
      res.status(500).json({ error: "Error fetching data" });
      return;
    }
    res.status(200).json(results);
  });
});

app.get("/getbook/:id", (req, res) => {
  console.log(req.params);
  const bookId = parseInt(req.params.id);
  const sql = `
  SELECT
    books.id,
    books.title,
    books.description,
    books.published_year,
    books.num_pages,
    books.editorial,
    books.image,
    authors.idauthors,
    authors.first_name,
    authors.last_name
  FROM
    books
  JOIN
    authors ON books.idauthors = authors.idauthors
  WHERE
    books.id = ${bookId};
`;;

  connection.query(sql, (err, results) => {
    if (err) {
      console.error("Error executing query: " + err.stack);
      res.status(500).send("Server error");
    } else {
      res.status(200).json(results);
    }
  });
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});
