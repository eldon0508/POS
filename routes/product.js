var express = require('express');
var router = express.Router();
var database = require('../database');
const dd = require('dump-die');

/* index. */
router.get('/index', function (req, res, next) {
    var query = "SELECT * FROM products ORDER BY id";
    database.query(query, function (err, data) {
        if (err) throw err;
        else {
            res.render('product/index', {
                title: 'Products',
                results: data,
            });
        }
    })
});

/* create */
router.get('/create', function (req, res, next) {
    res.render('product/create', { title: 'Product - Create' });
});

/* edit */
router.get('/edit/:id', function (req, res, next) {
    var id = req.params.id;
    var query = "SELECT * FROM products WHERE id = " + id;
    database.query(query, function (err, data) {
        if (err) throw err;
        else {
            res.render('product/edit', {
                title: res.name + ' - Edit',
                result: data[0],
            });
        }
    });
});

module.exports = router;