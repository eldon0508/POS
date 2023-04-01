var express = require('express');
var router = express.Router();
var database = require('../database');
const dd = require('dump-die');

/* index. */
router.get('/index', function (req, res, next) {
    var query = `
    SELECT p.*, c.name as category_name 
    FROM products p 
    LEFT JOIN categories c ON p.category_id = c.id
    WHERE p.deleted_at IS NULL`;
    database.query(query, function (err, data) {
        if (err) throw err;

        res.render('product/index', {
            title: 'Products',
            results: data,
            req: req,
        });
    })
});

/* create */
router.get('/create', function (req, res, next) {
    var query = "SELECT id, name FROM categories WHERE status = 1 ORDER BY id";
    database.query(query, function (err, data) {
        if (err) throw err;

        res.render('product/create', {
            title: 'Product - Create',
            categories: data,
        });
    })

});

/* store */
router.post('/store', function (req, res, next) {
    var product = {
        name: req.body.name,
        category_id: req.body.category_id,
        description: req.body.description,
        stock: req.body.stock,
        unit_price: req.body.unit_price,
        discounted_price: (req.body.discounted_price == null) ? 0 : req.body.discounted_price,
        expiry_date: req.body.expiry_date,
        age_restriction: (req.body.age_restriction == null) ? 1 : req.body.age_restriction,
        show_listing: (req.body.show_listing == null) ? 1 : req.body.show_listing,
    }
    var query = `INSERT INTO ?`;

    database.query(query, product, function (err, data) {
        if (err) throw err;

        req.toastr.success('New Product created!');
        res.redirect("/product/index");
    });
});

/* edit */
router.get('/edit/:id', function (req, res, next) {
    var id = req.params.id;
    var query = `SELECT * FROM products WHERE id = "${id}"; SELECT id, name FROM categories WHERE status = 1 ORDER BY id`;

    database.query(query, function (err, data) {
        if (err) throw err;

        var title = data[0][0].name + ' - Edit';
        res.render('product/edit', {
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
        category_id: req.body.category_id,
        description: req.body.description,
        stock: req.body.stock,
        unit_price: req.body.unit_price,
        discounted_price: (req.body.discounted_price == null) ? 0 : req.body.discounted_price,
        expiry_date: req.body.expiry_date,
        age_restriction: (req.body.age_restriction == null) ? 1 : req.body.age_restriction,
        show_listing: (req.body.show_listing == null) ? 1 : req.body.show_listing,
    }

    var query = `UPDATE products SET ? WHERE id = "${req.params.id}"`;

    database.query(query, product, function (err, data) {
        if (err) throw err;
        res.redirect("/product/index");
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
	UPDATE products
    SET deleted_at = "${deleted_at}"
    WHERE id = "${id}"`;

    database.query(query, function (err, data) {
        if (err)
            throw err;
        res.redirect("/product/index");
    });
});

module.exports = router;