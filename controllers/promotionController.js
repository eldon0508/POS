var db = require('../database');
var dd = require('dump-die');

/* cart */
const cartDiscount = (req, res, next) => {
    var query = `SELECT * FROM promotions WHERE id = 1;`;

    db.query(query, function (err, data) {
        if (err) throw err;

        var title = 'Cart Discount';
        res.render('promotion/cart-discount', {
            title: title,
            result: data[0],
            msg_type: req.flash('msg_type'),
            msg: req.flash('msg'),
            req: req,
        });
    });
}

/* cart-update */
const cartDiscountUpdate = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dt = d.toISOString().replace('T', ' ').substring(0, 19),
            q2 = {
                user_id: req.body.user_id,
                type: 1,
                discount_type: req.body.discount_type,
                rate: req.body.rate,
                min_spending: req.body.min_spending,
                capped_at: req.body.capped_at,
                start_date: req.body.start_date,
                end_date: req.body.end_date,
                status: req.body.status,
                updated_at: dt,
            };

        var query = `UPDATE promotions SET ? WHERE id = "${req.body.id}"`;

        db.query(query, q2);
        req.flash('msg', 'Cart Discount has been updated!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to update cart discount. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/promotion/cart-discount");
}

/* index */
const index = (req, res, next) => {
    var query = `SELECT * FROM promotions WHERE deleted_at IS NULL AND id != 1`;

    db.query(query, function (err, data) {
        if (err) throw err;

        res.render('promotion/index', {
            title: 'Discount Code',
            results: data,
            msg_type: req.flash('msg_type'),
            msg: req.flash('msg'),
            req: req,
        });
    });
}

/* create */
const create = (req, res, next) => {
    res.render('promotion/create', {
        title: 'Discount Code - Create',
        req: req,
    });
}

/* store */
const store = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dt = d.toISOString().replace('T', ' ').substring(0, 19),
            q2 = {
                name: req.body.name,
                user_id: req.body.user_id,
                type: 2,
                discount_type: req.body.discount_type,
                rate: req.body.rate,
                min_spending: req.body.min_spending,
                capped_at: req.body.capped_at,
                start_date: req.body.start_date,
                end_date: req.body.end_date,
                status: req.body.status,
                code: req.body.code,
                created_at: dt,
                updated_at: dt,
            };

        var query = "INSERT INTO promotions SET ?";

        db.query(query, q2);
        req.flash('msg', 'New Discount Code has been created!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to create record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/promotion/index");
}

/* edit */
const edit = (req, res, next) => {
    var id = req.params.id;
    var query = `SELECT * FROM promotions WHERE id = "${id}"; SELECT id, name FROM products WHERE deleted_at IS NULL`;

    db.query(query, function (err, data) {
        if (err) throw err;

        var title = data[0][0].name + ' - Edit';
        res.render('promotion/edit', {
            title: title,
            result: data[0][0],
            products: data[1],
            req: req,
        });
    });
}

/* update */
const update = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dt = d.toISOString().replace('T', ' ').substring(0, 19),
            q2 = {
                name: req.body.name,
                user_id: req.body.user_id,
                type: 2,
                discount_type: req.body.discount_type,
                rate: req.body.rate,
                min_spending: req.body.min_spending,
                capped_at: req.body.capped_at,
                start_date: req.body.start_date,
                end_date: req.body.end_date,
                status: req.body.status,
                code: req.body.code,
                updated_at: dt,
            };

        var query = `UPDATE promotions SET ? WHERE id = "${req.params.id}"`;

        db.query(query, q2);
        req.flash('msg', 'Discount Code has been updated!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to update record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/promotion/index");
}

/* destroy */
const destroy = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dt = d.toISOString().replace('T', ' ').substring(0, 19),
            query = `UPDATE promotions SET deleted_at = "${dt}" WHERE id = "${req.params.id}"`;

        db.query(query);
        req.flash('msg', 'Discount Code has been deleted!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to delete record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/promotion/index");
}

module.exports = { cartDiscount, cartDiscountUpdate, index, create, store, edit, update, destroy };