const router = require('express').Router();

module.exports = (db) => {
  router.get('/register', (req, res) => {
    if (req.isAuthenticated()) {
      res.redirect('/profile');
    } else if (req.path === '/register') {
      res.render('register');
    } else {
      console.log(' testing ');
    }
  });

  router.get('/profile', (req, res) => {
    if (req.isAuthenticated()) {
      db.User.findAll({
        where: {
          id: req.session.passport.user.id
        },
        include: [
          { model: db.Usertrees,
            required: false
          }
        ]
      }).then(result => {
        const user = {
          userInfo: { ...req.session.passport.user, profile_image_link: result[0].profile_image_link },
          isloggedin: req.isAuthenticated(),
          treeInfo: result[0].Usertrees
        };

        res.render('profile', user);
      });
    } else {
      res.redirect('/');
    }
  });

  router.get('/', (req, res) => {
    if (req.isAuthenticated()) {
      const user = {
        userInfo: req.session.passport.user,
        isloggedin: req.isAuthenticated()
      };
      res.render('dashboard', user);
    } else {
      res.render('dashboard');
    }
  });

  router.get('/dashboard', (req, res) => {
    if (req.isAuthenticated()) {
      const user = {
        userInfo: req.session.passport.user,
        isloggedin: req.isAuthenticated()
      };
      res.render('dashboard', user);
    } else {
      res.render('dashboard');
    }
  });

  router.get('/logout', (req, res, next) => {
    req.logout();
    req.session.destroy((err) => {
      if (err) {
        return next(err);
      }
      res.clearCookie('connect.sid', { path: '/' });
      res.redirect('/');
    });
  });

  // new route for about
  router.get('/about', (req, res) => {
    if (req.isAuthenticated()) {
      const user = {
        userInfo: req.session.passport.user,
        isloggedin: req.isAuthenticated()
      };
      res.render('about', user);
    } else {
      res.render('about');
    }
  });

  router.get('/howitworks', (req, res) => {
    if (req.isAuthenticated()) {
      const user = {
        userInfo: req.session.passport.user,
        isloggedin: req.isAuthenticated()
      };
      res.render('howitworks', user);
    } else {
      res.render('howitworks');
    }
  });

  router.get('/portfolio', (req, res) => {
    if (req.isAuthenticated()) {
      const user = {
        userInfo: req.session.passport.user,
        isloggedin: req.isAuthenticated()
      };
      res.render('portfolio', user);
    } else {
      res.render('portfolio');
    }
  });

  return router;
};
