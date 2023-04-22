var db = require('../database');
var dd = require('dump-die');
const bcrypt = require('bcrypt'),
    saltRounds = 10;

/* index */
const index = (req, res, next) => {
    var query = `SELECT * FROM users WHERE id != ${req.user.id} AND deleted_at IS NULL`;
    db.query(query, function (err, data) {
        if (err) throw err;

        res.render('staff/index', {
            title: 'Staff',
            results: data,
            msg_type: req.flash('msg_type'),
            msg: req.flash('msg'),
            req: req,
        });
    });
}

/* create */
const create = (req, res, next) => {
    res.render('staff/create', {
        title: 'Staff - Create',
        req: req,
    });
}

/* store */
const store = async (req, res, next) => {
    await db.beginTransaction();

    try {
        bcrypt.hash(req.body.password, saltRounds, function (err, hash) {
            var d = new Date(),
                dt = d.toISOString().replace('T', ' ').substring(0, 19),
                q2 = {
                    username: req.body.username,
                    password: hash,
                    email: req.body.email,
                    role: req.body.role,
                    first_name: req.body.first_name,
                    last_name: req.body.last_name,
                    address: req.body.address,
                    dob: req.body.dob,
                    created_at: dt,
                    updated_at: dt,
                };
            var query = "INSERT INTO users SET ?";

            db.query(query, q2);

            req.flash('msg', 'New Staff has been created!');
            req.flash('msg_type', 'success');
            db.commit();
            res.redirect("/staff/index");
        });
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to create record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/staff/index");
}

/* edit */
const edit = (req, res, next) => {
    var query = `SELECT * FROM users WHERE id = "${req.params.id}";`;

    db.query(query, function (err, data) {
        if (err) throw err;

        var title = data[0].username + ' - Edit';
        res.render('staff/edit', {
            title: title,
            result: data[0],
            req: req,
        });
    });
}

/* update */
const update = async (req, res, next) => {
    await db.beginTransaction();

    try {
        bcrypt.hash(req.body.password, saltRounds, function (err, hash) {
            var d = new Date(),
                dt = d.toISOString().replace('T', ' ').substring(0, 19),
                q2 = {
                    password: hash,
                    email: req.body.email,
                    role: req.body.role,
                    first_name: req.body.first_name,
                    last_name: req.body.last_name,
                    address: req.body.address,
                    dob: req.body.dob,
                    updated_at: dt,
                };

            var query = `UPDATE users SET ? WHERE id = "${req.params.id}"`;

            db.query(query, q2);
            req.flash('msg', 'Staff has been updated!');
            req.flash('msg_type', 'success');
            db.commit();
            res.redirect("/staff/index");
        });
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to update record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/staff/index");
}

/* destroy */
const destroy = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dt = d.toISOString().replace('T', ' ').substring(0, 19),
            query = `UPDATE users SET deleted_at = "${dt}" WHERE id = "${req.params.id}"`;

        db.query(query);
        req.flash('msg', 'Staff has been deleted!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to delete record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/staff/index");
}

module.exports = { index, create, store, edit, update, destroy };