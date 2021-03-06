module.exports = (passport, db) => {
  return {
    register: (req, res) => {
      if (!req.body.email || !req.body.password) {
        return res.json({ message: 'Email and Password required!' });
      }

      db.User.sync().then(() => {
        const newUser = {
          email: req.body.email,
          password: req.body.password,
          firstName: req.body.firstName,
          lastName: req.body.lastName,
          city: req.body.city,
          state: req.body.state,
          country: req.body.country
        };

        return db.User.create(newUser).then(() => {
          res.status(200).json({ message: 'Registered successfully.' });
        });
      }).catch((err) => {
        console.log(err);
        res.status(403).json({ error: 'Email already exists!' });
      });
    },
    login: (req, res, next) => {
      passport.authenticate('local', (err, user) => {
        if (err) {
          return next(err);
        }
        if (user) {
          req.logIn(user, (err) => {
            if (err) {
              return next(err);
            }
            return res.status(200).json({ loggedIn: true });
          });
        } else {
          res.json({ loggedIn: false, error: 'Can not log in, check your user name and password!' });
        }
      })(req, res, next);
    },
    logout: (req, res, next) => {
      req.logout();
      req.session.destroy((err) => {
        if (err) {
          return next(err);
        }
        res.clearCookie('connect.sid', { path: '/' });
        res.redirect('/');
      });
    },
    updateUser: (req, res) => {
      db.User.findOne({
        where: { id: parseInt(req.params.id) }
      }).then((user) => {
        let fn, ln, ci, st, cy, em, pw, pt;
        if (req.body.firstName === '' || req.body.firstName === undefined) {
          fn = user.firstName;
        } else {
          fn = req.body.firstName;
        }
        if (req.body.lastName === '' || req.body.lastName === undefined) {
          ln = user.lastName;
        } else {
          ln = req.body.lastName;
        }
        if (req.body.city === '' || req.body.city === undefined) {
          ci = user.city;
        } else {
          ci = req.body.city;
        }
        if (req.body.state === '' || req.body.state === undefined) {
          st = user.state;
        } else {
          st = req.body.state;
        }
        if (req.body.country === '' || req.body.country === undefined) {
          cy = user.country;
        } else {
          cy = req.body.country;
        }
        if (req.body.email === '' || req.body.email === undefined) {
          em = user.email;
        } else {
          em = req.body.email;
        }
        if (req.body.password === '' || req.body.password === undefined) {
          pw = user.password;
        } else {
          pw = req.body.password;
        }
        if (req.body.profile_text === '' || req.body.profile_text === undefined) {
          pt = user.profile_text;
        } else {
          pt = req.body.profile_text;
        }
        db.User.update({
          profile_image_link: req.body.profile_image_link,
          profile_text: pt,
          firstName: fn,
          lastName: ln,
          city: ci,
          state: st,
          country: cy,
          email: em,
          password: pw
        }, {
          where: { id: parseInt(req.params.id) }
        }).then(result => {
          res.json(result);
        });
      });
    },
    confirmAuth: (req, res) => {
      const email = req.body.email;
      const pwd = req.body.password;

      db.User.findOne({
        where: { email: email }
      }).then((user) => {
        if (!user) {
          return res.json(false);
        }
        if (!user.validPassword(pwd)) {
          return res.json(false);
        }
        return res.json(true);
      });
    },
    deleteUser: (req, res) => {
      db.User.destroy({
        where: { id: req.params.id }
      }).then(() => {
        res.json(true);
      }).catch(() => {
        res.json(false);
      });
    },
    userTrees: (req, res) => {
      db.Usertrees.sync().then(() => {
        const newUsertrees = {
          UserId: req.body.UserId,
          tree_image_link: req.body.tree_image_link,
          longitude: req.body.longitude,
          latitude: req.body.latitude,
          users_tree_name: req.body.users_tree_name,
          treetype: req.body.treetype,
          date_planted: req.body.date_planted
        };

        return db.Usertrees.create(newUsertrees).then(() => {
          res.status(200).json({ message: 'Tree Registered successfully.' });
        });
      }).catch((err) => {
        console.log(err);
        res.status(403).json(err);
      });
    },

    grabTrees: (req, res) => {
      var usertrees = [];
      db.Usertrees.findAll({
        include: [{
          model: db.User,
          required: true
        }]
      }).then(trees => {
        for (var i = 0; i < trees.length; i++) {
          const tr = {
            firstName: trees[i].User.firstName,
            lastName: trees[i].User.lastName,
            latitude: trees[i].latitude,
            longitude: trees[i].longitude,
            date_planted: trees[i].date_planted,
            users_tree_name: trees[i].users_tree_name,
            tree_image_link: trees[i].tree_image_link
          };
          usertrees.push(tr);
        }
        res.json(usertrees);
      });
    }
  };
};
