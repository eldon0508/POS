var db = require('../database');


/* index */
const index = (req, res, next) => {
    console.log(req);
    var query = `
        SELECT p.*, c.name as category_name 
        FROM products p 
        LEFT JOIN categories c ON p.category_id = c.id
        WHERE p.deleted_at IS NULL`;

    db.query(query, function (err, data) {
        if (err) throw err;

        res.render('product/index', {
            title: 'Product',
            results: data,
            msg_type: req.flash('msg_type'),
            msg: req.flash('msg'),
            req: req,
        });
    });
}

/* create */
const create = (req, res, next) => {
    var query = "SELECT id, name FROM categories WHERE status = 1 ORDER BY id";
    db.query(query, function (err, data) {
        if (err) throw err;

        res.render('product/create', {
            title: 'Product - Create',
            categories: data,
            req: req,
        });
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
                category_id: req.body.category_id,
                description: req.body.description,
                stock: req.body.stock,
                unit_price: req.body.unit_price,
                discounted_price: (req.body.discounted_price == null) ? 0 : req.body.discounted_price,
                expiry_date: req.body.expiry_date,
                age_restriction: (req.body.age_restriction == null) ? 1 : req.body.age_restriction,
                show_listing: (req.body.show_listing == null) ? 1 : req.body.show_listing,
                created_at: dt,
                updated_at: dt,
            };

        var query = "INSERT INTO products SET ?";

        db.query(query, q2);
        req.flash('msg', 'New Product has been created!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to create record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/product/index");
}

/* edit */
const edit = (req, res, next) => {
    var id = req.params.id;
    var query = `SELECT * FROM products WHERE id = "${id}"; SELECT id, name FROM categories WHERE status = 1 ORDER BY id`;

    db.query(query, function (err, data) {
        if (err) throw err;

        var title = data[0][0].name + ' - Edit';
        res.render('product/edit', {
            title: title,
            result: data[0][0],
            categories: data[1],
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
                category_id: req.body.category_id,
                description: req.body.description,
                stock: req.body.stock,
                unit_price: req.body.unit_price,
                discounted_price: (req.body.discounted_price == null) ? 0 : req.body.discounted_price,
                expiry_date: req.body.expiry_date,
                age_restriction: (req.body.age_restriction == null) ? 1 : req.body.age_restriction,
                show_listing: (req.body.show_listing == null) ? 1 : req.body.show_listing,
                updated_at: dt,
            };

        var query = `UPDATE products SET ? WHERE id = "${req.params.id}"`;

        db.query(query, q2);

        req.flash('msg', 'Product has been updated!');
        req.flash('msg_type', 'success');
        res.redirect("/product/index");
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to update record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/product/index");
}

/* destroy */
const destroy = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dt = d.toISOString().replace('T', ' ').substring(0, 19),
            query = `UPDATE products SET deleted_at = "${dt}" WHERE id = "${req.params.id}"`;

        db.query(query);

        req.flash('msg', 'Product has been deleted!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to delete record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/product/index");
}

module.exports = { index, create, store, edit, update, destroy };