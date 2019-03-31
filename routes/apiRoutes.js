const router = require('express').Router();
const ensureAuthenticated = require('../middlewares/ensureAuthenticated');

module.exports = (passport, db) => {
  const AuthController = require('../controllers/authController')(passport, db);
  const AppController = require('../controllers/appController')();

  // Authentication
  router.post('/register', AuthController.register);
  router.post('/login', AuthController.login);
  router.get('/logout', AuthController.logout);
  router.put('/user/:id', ensureAuthenticated, AuthController.updateUser);
  router.delete('/user/:id', ensureAuthenticated, AuthController.deleteUser);
  router.post('/user/confirm', AuthController.confirmAuth);
  // push treelink
  router.post('/usertrees', AuthController.userTrees, function (req, res) {
    console.log('did post usertrees');
  });
  router.get('/usertrees', AuthController.grabTrees);
  // App
  router.get('/data', ensureAuthenticated, AppController.getData);

  return router;
};
