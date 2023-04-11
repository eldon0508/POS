var db = require('../database');
const dd = require('dump-die');

/* index. */
const index = (req, res, next) => {
    var query = `SELECT * FROM customers WHERE deleted_at IS NULL`;
    db.query(query, function (err, data) {
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
const store = async (req, res, next) => {
    await db.beginTransaction();

    try {
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

        db.query(query, q2);
        req.flash('msg', 'New Customer has been created!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to create record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/customer/index");
}

/* edit */
const edit = (req, res, next) => {
    var id = req.params.id;
    var query = `SELECT * FROM customers WHERE id = "${id}"`;

    db.query(query, function (err, data) {
        if (err) throw err;

        var title = data[0].first_name + ' ' + data[0].last_name + ' - Edit';
        res.render('customer/edit', {
            title: title,
            result: data[0],
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
                first_name: req.body.first_name,
                last_name: req.body.last_name,
                dob: req.body.dob,
                address: req.body.address,
                updated_at: dt,
            };

        var query = `UPDATE customers SET ? WHERE id = "${req.params.id}"`;

        db.query(query, q2);
        req.flash('msg', 'Customer has been updated!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (err) {
        db.rollback();
        req.flash('msg', 'Failed to update record. Something went wrong!');
        req.flash('msg_type', 'error');
    }
    res.redirect("/customer/index");
}

/* destroy */
const destroy = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dt = d.toISOString().replace('T', ' ').substring(0, 19),
            query = `UPDATE customers SET deleted_at = "${dt}" WHERE id = "${req.params.id}"`;

        db.query(query);
        req.flash('msg', 'Customer has been deleted!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (err) {
        db.rollback();
        req.flash('msg', 'Failed to delete record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/customer/index");
}

module.exports = { index, create, store, edit, update, destroy };