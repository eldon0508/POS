var express = require('express');
var router = express.Router();
var database = require('../database');
const dd = require('dump-die');

/* index. */
router.get('/index', function (req, res, next) {
    var query = `SELECT * FROM customers WHERE deleted_at IS NULL`;

    database.query(query, function (err, data) {
        if (err) throw err;

        res.render('customer/index', {
            title: 'Customer',
            results: data,
            msg_type: req.flash('msg_type'),
            msg: req.flash('msg'),
        });
    });
});

/* create */
router.get('/create', function (req, res, next) {
    res.render('customer/create', {
        title: 'Customer - Create',
    });
});

/* store */
router.post('/store', function (req, res, next) {
    var d = new Date(),
        date = d[0],
        time = d[1],
        dt = d.toISOString().replace('T', ' ').substring(0, 19);

    var product = {
        first_name: req.body.first_name,
        last_name: req.body.last_name,
        dob: req.body.dob,
        address: req.body.address,
        created_at: dt,
        updated_at: dt,
    }
    var query = "INSERT INTO customers SET ?";

    database.query(query, product, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'New Customer has been created!');
        req.flash('msg_type', 'success');
        res.redirect("/customer/index");
    });
});

/* edit */
router.get('/edit/:id', function (req, res, next) {
    var id = req.params.id;
    var query = `SELECT * FROM customers WHERE id = "${id}"`;

    database.query(query, function (err, data) {
        if (err) throw err;

        var title = data[0].first_name + ' ' + data[0].last_name + ' - Edit';
        res.render('customer/edit', {
            title: title,
            result: data[0],
        });

    });
});

/* update */
router.post('/update/:id', function (req, res, next) {
    var d = new Date(),
        date = d[0],
        time = d[1],
        dt = d.toISOString().replace('T', ' ').substring(0, 19);

    var customer = {
        first_name: req.body.first_name,
        last_name: req.body.last_name,
        dob: req.body.dob,
        address: req.body.address,
        updated_at: dt,
    }

    var query = `UPDATE customers SET ? WHERE id = "${req.params.id}"`;

    database.query(query, customer, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Customer has been updated!');
        req.flash('msg_type', 'success');
        res.redirect("/customer/index");
    });
});

/* destroy */
router.post('/destroy/:id', function (req, res, next) {
    var d = new Date(),
        date = d[0],
        time = d[1],
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        id = req.params.id;

    var query = `
	UPDATE customers
    SET deleted_at = "${dt}"
    WHERE id = "${id}"`;

    database.query(query, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Customer has been deleted!');
        req.flash('msg_type', 'success');
        res.redirect("/customer/index");
    });
});

module.exports = router;