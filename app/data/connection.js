// INITIATE THE CONNECTION TO MYSQL

// Require mysql
var mysql = require("mysql");

// Set up our connection information
var connection = mysql.createConnection({
  port: 3306,
  host: "localhost",
  user: "root",
  password: "",
  database: "friend_finder"
});

// Connect to the database
connection.connect(function(err) {
    if(err) throw err;
    console.log("db connected as id " + connection.threadId);
});

// Export connection
module.exports = connection;
