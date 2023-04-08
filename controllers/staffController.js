var database = require('../database');
const dd = require('dump-die');

/* index */
const index = (req, res, next) => {
    var query = `SELECT * FROM users WHERE deleted_at IS NULL`;
    database.query(query, function (err, data) {
        if (err) throw err;

        res.render('staff/index', {
            title: 'Staffs',
            results: data,
            msg_type: req.flash('msg_type'),
            msg: req.flash('msg'),
        });
    });
}

/* create */
const create = (req, res, next) => {
    res.render('staff/create', {
        title: 'Staff - Create'
    });
}

/* store */
const store = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        q2 = {
            username: req.body.username,
            email: req.body.email,
            password: req.body.password,
            first_name: req.body.first_name,
            last_name: req.body.last_name,
            dob: req.body.dob,
            address: req.body.address,
            role: req.body.role,
            created_at: dt,
            updated_at: dt,
        }
    var query = "INSERT INTO users SET ?";

    database.query(query, q2, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'New Staff has been created!');
        req.flash('msg_type', 'success');
        res.redirect("/staff/index");
    });
}

/* edit */
const edit = (req, res, next) => {
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
}

/* update */
const update = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        q2 = {
            username: req.body.username,
            email: req.body.email,
            password: req.body.password,
            first_name: req.body.first_name,
            last_name: req.body.last_name,
            dob: req.body.dob,
            address: req.body.address,
            role: req.body.role,
            updated_at: dt,
        }

    var query = `UPDATE users SET ? WHERE id = "${req.params.id}"`;

    database.query(query, q2, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Staff has been updated!');
        req.flash('msg_type', 'success');
        res.redirect("/staff/index");
    });
}

/* destroy */
const destroy = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        query = `UPDATE users SET deleted_at = "${dt}" WHERE id = "${req.params.id}"`;

    database.query(query, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Staff has been deleted!');
        req.flash('msg_type', 'success');
        res.redirect("/staff/index");
    });
}

module.exports = { index, create, store, edit, update, destroy };