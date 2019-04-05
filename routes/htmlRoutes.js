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
          {
            model: db.Usertrees,
            required: false
          }
        ]
      }).then(result => {
        let fn, ln, ci, st, cy, em, pw, pt;
        if (result[0].firstName === '') {
          fn = req.session.passport.user.firstName;
        } else {
          fn = result[0].firstName;
        }
        if (result[0].lastName === '') {
          ln = req.session.passport.user.lastName;
        } else {
          ln = result[0].lastName;
        }
        if (result[0].city === '') {
          ci = req.session.passport.user.city;
        } else {
          ci = result[0].city;
        }
        if (result[0].state === '') {
          st = req.session.passport.user.state;
        } else {
          st = result[0].state;
        }
        if (result[0].country === '') {
          cy = req.session.passport.user.country;
        } else {
          cy = result[0].country;
        }
        if (result[0].email === '') {
          em = req.session.passport.user.email;
        } else {
          em = result[0].email;
        }
        if (result[0].password === '') {
          pw = req.session.passport.user.password;
        } else {
          pw = result[0].password;
        }
        if (result[0].profile_text === '') {
          pt = req.session.passport.user.profile_text;
        } else {
          pt = result[0].profile_text;
        }
        const user = {
          userInfo: {
            ...req.session.passport.user,
            profile_image_link: result[0].profile_image_link,
            profile_text: pt,
            firstName: fn,
            lastName: ln,
            city: ci,
            state: st,
            country: cy,
            email: em,
            password: pw
          },
          isloggedin: req.isAuthenticated(),
          treeInfo: result[0].Usertrees,
          carbonCount: result[0].Usertrees.length * 4.3
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
