var database = require('../database');
const dd = require('dump-die');

/* index */
const index = (req, res, next) => {
    var query = `SELECT * FROM promotions WHERE deleted_at IS NULL`;

    database.query(query, function (err, data) {
        if (err) throw err;

        res.render('promotion/index', {
            title: 'Promotions',
            results: data,
            msg_type: req.flash('msg_type'),
            msg: req.flash('msg'),
        });
    });
}

/* create */
const create = (req, res, next) => {
    var query = "SELECT id, name FROM products WHERE deleted_at IS NULL;";
    database.query(query, function (err, data) {
        if (err) throw err;

        res.render('promotion/create', {
            title: 'Promotions - Create',
            products: data,
        });
    });
}

/* store */
const store = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        q2 = {
            name: req.body.name,
            user_id: 1,
            type: req.body.type,
            discount_type: req.body.discount_type,
            rate: req.body.rate,
            capped_at: req.body.capped_at,
            promo_code: req.body.promo_code,
            start_date: req.body.start_date,
            end_date: req.body.end_date,
            product_id: req.body.product_id,
            status: req.body.status,
            created_at: dt,
            updated_at: dt,
        }
    var query = "INSERT INTO promotions SET ?";

    database.query(query, q2, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'New Promotion has been created!');
        req.flash('msg_type', 'success');
        res.redirect("/promotion/index");
    });
}

/* edit */
const edit = (req, res, next) => {
    var id = req.params.id;
    var query = `SELECT * FROM promotions WHERE id = "${id}"; SELECT id, name FROM products WHERE deleted_at IS NULL`;

    database.query(query, function (err, data) {
        if (err) throw err;

        var title = data[0][0].name + ' - Edit';
        res.render('promotion/edit', {
            title: title,
            result: data[0][0],
            products: data[1],
        });

    });
}

/* update */
const update = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        q2 = {
            name: req.body.name,
            user_id: 1,
            type: req.body.type,
            discount_type: req.body.discount_type,
            rate: req.body.rate,
            capped_at: req.body.capped_at,
            promo_code: req.body.promo_code,
            start_date: req.body.start_date,
            end_date: req.body.end_date,
            product_id: req.body.product_id,
            status: req.body.status,
            updated_at: dt,
        }

    var query = `UPDATE promotions SET ? WHERE id = "${req.params.id}"`;

    database.query(query, q2, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Promotion has been updated!');
        req.flash('msg_type', 'success');
        res.redirect("/promotion/index");
    });
}

/* destroy */
const destroy = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        query = `UPDATE promotions SET deleted_at = "${dt}" WHERE id = "${req.params.id}"`;

    database.query(query, function (err, data) {
        if (err) throw err;

        req.flash('msg', 'Promotion has been deleted!');
        req.flash('msg_type', 'success');
        res.redirect("/promotion/index");
    });
}

module.exports = { index, create, store, edit, update, destroy };