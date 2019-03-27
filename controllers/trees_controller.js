const express = require("express");
const router = express.Router();

// Import the model (tree.js) to use its database functions.
const tree = require("../models/tree.js");

router.get("/", function(req, res) {
  tree.all(function(data) {
    const hbsObject = {
      trees: data
    };
    // res.render("index", hbsObject);
    res.render("index");
  });
});

var loginstatus;
//add user to db
router.post("/api/trees", function(req, res) {

  if(req.body.type==="submit"){
    tree.create(["username", "userpassword", "email", "treephoto"], [req.body.username, req.body.userpassword, req.body.email, req.body.treephoto], function(result) {
      res.json();
    });
  }
  else if(req.body.type==="login"){
    tree.check(["userpassword", "email"], [req.body.userpassword, req.body.email],function(result) {
      loginstatus=result[0].found;
      res.json(result);
    });
  }
});

  router.get("/api/trees", function(req, res) {
    console.log("sending this 2 "+JSON.stringify(loginstatus));
    return res.json(loginstatus);   
  });
  
// Export routes for server.js to use.
module.exports = router;