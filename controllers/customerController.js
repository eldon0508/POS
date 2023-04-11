var database = require('../database');
const dd = require('dump-die');

/* index. */
const index = (req, res, next) => {
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
}

/* create */
const create = (req, res, next) => {
    res.render('customer/create', {
        title: 'Customer - Create',
    });
}

/* store */
const store = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        q2 = {
            first_name: req.body.first_name,
            last_name: req.body.last_name,
            dob: req.body.dob,
            address: req.body.address,
            created_at: dt,
            updated_at: dt,
        };

    var query = "INSERT INTO customers SET ?";

    database.query(query, q2, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'New Customer has been created!');
        req.flash('msg_type', 'success');
        res.redirect("/customer/index");
    });
}

/* edit */
const edit = (req, res, next) => {
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
}

/* update */
const update = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        q2 = {
            first_name: req.body.first_name,
            last_name: req.body.last_name,
            dob: req.body.dob,
            address: req.body.address,
            updated_at: dt,
        };

    var query = `UPDATE customers SET ? WHERE id = "${req.params.id}"`;

    database.query(query, q2, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Customer has been updated!');
        req.flash('msg_type', 'success');
        res.redirect("/customer/index");
    });
}

/* destroy */
const destroy = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        query = `UPDATE customers SET deleted_at = "${dt}" WHERE id = "${req.params.id}"`;

    database.query(query, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Customer has been deleted!');
        req.flash('msg_type', 'success');
        res.redirect("/customer/index");
    });
}

module.exports = { index, create, store, edit, update, destroy };