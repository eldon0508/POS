var express = require('express');
var router = express.Router();
var database = require('../database');
const dd = require('dump-die');

/* index. */
router.get('/index', function (req, res, next) {
    var query = `
    SELECT *
    FROM users
    WHERE deleted_at IS NULL`;

    database.query(query, function (err, data) {
        if (err) throw err;

        res.render('staff/index', {
            title: 'Staffs',
            results: data,
            msg_type: req.flash('msg_type'),
            msg: req.flash('msg'),
        });
    });
});

/* create */
router.get('/create', function (req, res, next) {
    // database.query(query, function (err, data) {
        // if (err) throw err;

        res.render('staff/create', {
            title: 'Staff - Create'
        });
    // });
});

/* store */
router.post('/store', function (req, res, next) {
    var staff = {
        username: req.body.username,
        email: req.body.email,
        password : req.body.password,
        first_name : req.body.first_name,
        last_name : req.body.last_name,
        dob : req.body.dob,
        address : req.body.address,
        role: req.body.role
    }
    var query = "INSERT INTO users SET ?";

    database.query(query, staff, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'New Staff has been created!');
        req.flash('msg_type', 'success');
        res.redirect("/staff/index");
    });
});

/* edit */
router.get('/edit/:id', function (req, res, next) {
    var id = req.params.id;
    var query = `SELECT * FROM users WHERE id = "${id}";`;

    database.query(query, function (err, data) {
        if (err) throw err;

        var title = data[0].username + ' - Edit';
        res.render('staff/edit', {
            title: title,
            result: data[0]
        });

    });
});

/* update */
router.post('/update/:id', function (req, res, next) {
    var product = {
        username: req.body.username,
        email: req.body.email,
        password : req.body.password,
        first_name : req.body.first_name,
        last_name : req.body.last_name,
        dob : req.body.dob,
        address : req.body.address,
        role: req.body.role
    }

    var query = `UPDATE users SET ? WHERE id = "${req.params.id}"`;

    database.query(query, product, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Staff has been updated!');
        req.flash('msg_type', 'success');
        res.redirect("/staff/index");
    });
});

/* destroy */
router.post('/destroy/:id', function (req, res, next) {
    var id = req.params.id;
    var d = new Date().toISOString().split('T');
    var deleted_at_date = d[0];
    var deleted_at_time = d[1];
    var deleted_at = deleted_at_date.concat(" ", deleted_at_time);
    var query = `
	UPDATE users
    SET deleted_at = "${deleted_at}"
    WHERE id = "${id}"`;

    database.query(query, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Staff has been deleted!');
        req.flash('msg_type', 'success');
        res.redirect("/staff/index");
    });
});

module.exports = router;