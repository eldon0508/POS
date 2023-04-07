var database = require('../database');
const dd = require('dump-die');
const bcrypt = require('bcrypt');

/* login index */
const loginIndex = (req, res, next) => {
    res.render('auth/login', {
        msg_type: req.flash('msg_type'),
        msg: req.flash('msg'),
    });
}

/* login post */
const login = (req, res, next) => {
    var username = req.body.username,
        password = req.body.password;

    var query = `SELECT * FROM users WHERE username = "${username}"`;
    database.query(query, (err, data) => {
        // No user found
        if (data.length <= 0) {
            req.flash('msg', 'Account not found.');
            req.flash('msg_type', 'error');
            res.redirect('login');
        } else {
            bcrypt.compare(password, data[0].password).then(function (result) {
                // Found, but incorrect password
                if (!result) {
                    req.flash('msg', 'Incorrect password.');
                    req.flash('msg_type', 'error');
                    res.redirect('login');
                } else {
                    req.flash('msg', 'Welcome back!');
                    req.flash('msg_type', 'success');
                    res.redirect('/');
                }
            });
        }
    });
}

module.exports = { loginIndex, login };