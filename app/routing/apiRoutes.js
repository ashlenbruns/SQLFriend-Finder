// DATA
var connection = require("../data/connection");
var bffName;
var bffPhoto;

// FRIEND FINDER CALCULATIONS
function findFriend(newFriend, cb) {
  var initialComparison = 100;
  var totalDifference = 0;
  var q1Diff = 0;
  var q2Diff = 0;
  var q3Diff = 0;
  var q4Diff = 0;
  var q5Diff = 0;
  var q6Diff = 0;
  var q7Diff = 0;
  var q8Diff = 0;
  var q9Diff = 0;
  var q10Diff = 0;

  connection.query("SELECT * FROM friends", function(err,result) {
    if (err) throw err;
  
    for (i=0;i<result.length;i++) {
      q1Diff = Math.abs(parseInt(result[i].q1) - parseInt(newFriend.q1));
      q2Diff = Math.abs(parseInt(result[i].q2) - parseInt(newFriend.q2));
      q3Diff = Math.abs(parseInt(result[i].q3) - parseInt(newFriend.q3));
      q4Diff = Math.abs(parseInt(result[i].q4) - parseInt(newFriend.q4));
      q5Diff = Math.abs(parseInt(result[i].q5) - parseInt(newFriend.q5));
      q6Diff = Math.abs(parseInt(result[i].q6) - parseInt(newFriend.q6));
      q7Diff = Math.abs(parseInt(result[i].q7) - parseInt(newFriend.q7));
      q8Diff = Math.abs(parseInt(result[i].q8) - parseInt(newFriend.q8));
      q9Diff = Math.abs(parseInt(result[i].q9) - parseInt(newFriend.q9));
      q10Diff = Math.abs(parseInt(result[i].q10) - parseInt(newFriend.q10));
      totalDifference = q1Diff+q2Diff+q3Diff+q4Diff+q5Diff+q6Diff+q7Diff+q8Diff+q9Diff+q10Diff;
  
      if (totalDifference < initialComparison) {
        initialComparison = totalDifference;
        bffName = result[i].name;
        bffPhoto = result[i].photo;
        console.log(bffName);
      }
    }
  
    cb();
  });  
  
}


// ROUTING
module.exports = function(app) {

  app.get("/api/friends", function(req, res) {
    connection.query("SELECT * FROM friends", function(err, results) {
      if (err) throw err;
      res.json(results);
    });
  });


  app.post("/api/friends", function(req, res) {
    var newFriend = req.body;

    findFriend(newFriend, function() {
      console.log(bffName);

      connection.query("INSERT INTO users SET ?", newFriend, function(err, results) {
        if (err) throw err;
      });
      res.json({bffName: bffName, bffPhoto: bffPhoto});
    });
  });

}
