// Import the ORM to create functions that will interact with the database.
const orm = require("../config/orm.js");

const tree = {
  all: function(cb) {
    orm.all("trees", function(res) {
      cb(res);
    });
  },
// The variables cols and vals are arrays.
  create: function(cols, vals, cb) {
    orm.create("trees", cols, vals, function(res) {
      cb(res);
    });
  },

  check: function(cols, vals, cb) {
    orm.check("trees", cols, vals, function(res) {
      cb(res);
    });
  }
};

// Export the database functions for the controller (treesController.js).
module.exports = tree;