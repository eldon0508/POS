var express = require('express');
var router = express.Router();
var database = require('../database');
const dd = require('dump-die');

/* index. */
router.get('/index', function (req, res, next) {
    var query = `
    SELECT *
    FROM categories
    WHERE deleted_at IS NULL`;

    database.query(query, function (err, data) {
        if (err) throw err;

        res.render('category/index', {
            title: 'Category',
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

        res.render('category/create', {
            title: 'Category - Create',
            categories: data,
        });
    });
});

/* store */
router.post('/store', function (req, res, next) {
    var product = {
        name: req.body.name,
        description: req.body.description,
    }
    var query = "INSERT INTO categories SET ?";

    database.query(query, product, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'New Category has been created!');
        req.flash('msg_type', 'success');
        res.redirect("/category/index");
    });
});

/* edit */
router.get('/edit/:id', function (req, res, next) {
    var id = req.params.id;
    var query = `SELECT * FROM categories WHERE id = "${id}"; SELECT id, name FROM categories WHERE status = 1 ORDER BY id`;

    database.query(query, function (err, data) {
        if (err) throw err;

        var title = data[0][0].name + ' - Edit';
        res.render('category/edit', {
            title: title,
            result: data[0][0],
            categories: data[1],
        });

    });
});

/* update */
router.post('/update/:id', function (req, res, next) {
    var product = {
        name: req.body.name,
        description: req.body.description,
    }

    var query = `UPDATE categories SET ? WHERE id = "${req.params.id}"`;

    database.query(query, product, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Product has been updated!');
        req.flash('msg_type', 'success');
        res.redirect("/category/index");
    });
});

/* destroy */
router.post('/destroy/:id', function (req, res, next) {
    var d = new Date(),
    dt = d.toISOString().replace('T', ' ').substring(0, 19),
    id = req.params.id;
    var query = `
	UPDATE categories
    SET deleted_at = "${dt}"
    WHERE id = "${id}"`;

    database.query(query, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Category has been deleted!');
        req.flash('msg_type', 'success');
        res.redirect("/category/index");
    });
});

module.exports = router;