var database = require('../database');
const dd = require('dump-die');

/* index */
const index = (req, res, next) => {
    var query = `SELECT * FROM categories WHERE deleted_at IS NULL`;

    database.query(query, function (err, data) {
        if (err) throw err;

        res.render('category/index', {
            title: 'Category',
            results: data,
            msg_type: req.flash('msg_type'),
            msg: req.flash('msg'),
        });
    });
}

/* create */
const create = (req, res, next) => {
    res.render('category/create', {
        title: 'Category - Create',
    });
}

/* store */
const store = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        q2 = {
            name: req.body.name,
            description: req.body.description,
            status: req.body.status,
            created_at: dt,
            updated_at: dt,
        }

    var query = "INSERT INTO categories SET ?";

    database.query(query, q2, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'New Category has been created!');
        req.flash('msg_type', 'success');
        res.redirect("/category/index");
    });
}

/* edit */
const edit = (req, res, next) => {
    var id = req.params.id;
    var query = `SELECT * FROM categories WHERE id = "${id}"`;

    database.query(query, function (err, data) {
        if (err) throw err;

        var title = data[0].name + ' - Edit';
        res.render('category/edit', {
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
            name: req.body.name,
            description: req.body.description,
            status: req.body.status,
            updated_at: dt,
        }

    var query = `UPDATE categories SET ? WHERE id = "${req.params.id}"`;

    database.query(query, q2, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Category has been updated!');
        req.flash('msg_type', 'success');
        res.redirect("/category/index");
    });
}

/* destroy */
const destroy = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        query = `UPDATE categories SET deleted_at = "${dt}" WHERE id = "${req.params.id}"`;

    database.query(query, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Category has been deleted!');
        req.flash('msg_type', 'success');
        res.redirect("/category/index");
    });
}

module.exports = { index, create, store, edit, update, destroy };