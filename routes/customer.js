var express = require('express');
var router = express.Router();
var database = require('../database');
const dd = require('dump-die');

/* index. */
router.get('/index', function (req, res, next) {
    // Variable
    var query = `
    SELECT *
    FROM customers
    WHERE deleted_at IS NULL`;

    //
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
    var query = "SELECT id, name FROM categories WHERE status = 1 ORDER BY id";
    database.query(query, function (err, data) {
        if (err) throw err;

        res.render('customer/create', {
            title: 'Customer - Create',
            categories: data,
        });
    });
});

/* store */
router.post('/store', function (req, res, next) {
    var product = {
        first_name: req.body.first_name,
        last_name:req.body.last_name,
        dob:req.body.dob,
        address:req.body.address,
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
    var query = `SELECT * FROM customers WHERE id = "${id}";`;

    database.query(query, function (err, data) {
        if (err) throw err;

        var title = data[0].name + ' - Edit';
        res.render('customer/edit', {
            title: title,
            result: data[0],
            categories: data[1],
        });

    });
});

/* update */
router.post('/update/:id', function (req, res, next) {
    var customer = {
        first_name:req.body.first_name,
        last_name: req.body.last_name,
        dob: req.body.dob,
        address: req.body.address
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
    var id = req.params.id;
    var d = new Date();
    var deleted_at_date = d[0];
    var deleted_at_time = d[1];
    var deleted_at = d.toISOString().replace('T', ' ').substring(0, 19);
    var query = `
	UPDATE customers
    SET deleted_at = "${deleted_at}"
    WHERE id = "${id}"`;

    database.query(query, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Customer has been deleted!');
        req.flash('msg_type', 'success');
        res.redirect("/customer/index");
    });
});

module.exports = router;