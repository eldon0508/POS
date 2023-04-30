var db = require('../database');
var dd = require('dump-die');

/* index */
const index = (req, res, next) => {
    var query = `
    SELECT t.*, c.first_name AS first_name, c.last_name AS last_name
    FROM transactions t
    LEFT JOIN customers c
    ON t.customer_id = c.id
    WHERE t.deleted_at IS NULL`;

    db.query(query, function (err, data) {
        if (err) throw err;

        res.render('transaction/index', {
            title: 'Transaction',
            results: data,
            msg_type: req.flash('msg_type'),
            msg: req.flash('msg'),
            req: req,
        });
    });
}

// Create page for new transaction
const create = (req, res, next) => {
    var query = `SELECT * FROM customers WHERE deleted_at IS NULL;`;

    db.query(query, (err, data) => {
        if (err) throw err;

        res.render('transaction/create', {
            customers: data,
            req: req,
        });
    });
}

/* store */
const store = (req, res, next) => {
    var d = new Date(),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        q2 = {
            customer_id: req.body.customer_id,
            created_at: dt,
            updated_at: dt,
        };

    var query = `INSERT INTO transactions SET ?`;

    db.query(query, q2, (err, data) => {
        if (err) throw err;

        var tran_id = data.insertId;
        res.render('', {
            tran_id: tran_id,
        });
    });
}

/* edit */
const edit = (req, res, next) => {
    // Category filter
    var cat_query = (req.params.category_id) ? "AND p.category_id = " + req.params.category_id : "",
        q = `SELECT * FROM transactions WHERE id = ${req.params.id} AND deleted_at IS NULL;
    SELECT ti.*, p.name, p.description, p.unit_price AS p_unit_price, p.discounted_price, p.age_restriction FROM transaction_items ti LEFT JOIN products p ON ti.product_id = p.id WHERE ti.transaction_id = ${req.params.id} AND ti.deleted_at IS NULL;
    SELECT * FROM categories WHERE deleted_at IS NULL;
    SELECT p.*, c.name AS category_name FROM products p LEFT JOIN categories c ON p.category_id = c.id WHERE p.deleted_at IS NULL `+ cat_query;

    var flag = true;
    if (cat_query != "")
        flag = false;


    console.log(cat_query, 'asdfasdfasdfadsf', q);
    db.query(q, function (err, data) {
        if (err) throw err;

        var title = 'Transaction #' + data[0][0].id + ' - Edit',
            q2 = `SELECT * FROM customers WHERE id = ${data[0][0].customer_id} AND deleted_at IS NULL;`;

        db.query(q2, (err, row) => {
            res.render('transaction/edit', {
                title: title,
                result: data[0][0],
                items: data[1],
                categories: data[2],
                products: data[3],
                customer: row[0],
                flag: flag,
                msg_type: req.flash('msg_type'),
                msg: req.flash('msg'),
                req: req,
            });
        });
    });
}

/* show */
const show = (req, res, next) => {
    var q = `SELECT * FROM transactions t WHERE id = ${req.params.id} AND deleted_at IS NULL;
    SELECT ti.*, p.name, p.description, p.unit_price AS p_unit_price, p.discounted_price, p.age_restriction FROM transaction_items ti LEFT JOIN products p ON ti.product_id = p.id WHERE ti.transaction_id = ${req.params.id} AND ti.deleted_at IS NULL;`;

    db.query(q, function (err, data) {
        if (err) throw err;

        var title = 'Transaction #' + data[0][0].id,
            q2 = `SELECT * FROM customers WHERE id = ${data[0][0].customer_id} AND deleted_at IS NULL;`;

        db.query(q2, (err, row) => {
            res.render('transaction/show', {
                title: title,
                result: data[0][0],
                items: data[1],
                products: data[2],
                customer: row[0],
                msg_type: req.flash('msg_type'),
                msg: req.flash('msg'),
                req: req,
            });
        });
    });
}

const destroy = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dt = d.toISOString().replace('T', ' ').substring(0, 19),
            query = `UPDATE transactions SET deleted_at = "${dt}" WHERE id = "${req.params.id}"`;

        db.query(query);
        req.flash('msg', 'Transaction has been deleted!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (err) {
        db.rollback();
        req.flash('msg', 'Failed to delete record. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect("/transaction/index");
}

/* add item */
const addItem = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dt = d.toISOString().replace('T', ' ').substring(0, 19),
            product_id = req.body.product_id,
            tran_id = req.body.transaction_id,
            query = `SELECT * FROM products WHERE id = ${product_id} AND deleted_at IS NULL;`,
            q2 = `INSERT INTO transaction_items SET ?`;

        // Retrieve product detail
        db.query(query, (err, data) => {
            // Check whether product on discount
            var flag = true,
                product = data[0],
                qty = req.body.quantity;

            // Return error if insufficient stock
            // if (qty > product.stock) {
            //     db.rollback();
            //     res.redirect('/transaction/' + tran_id + '/edit');
            // }

            var price = product.unit_price;
            if (product.discounted_price > 0) { price = product.discounted_price; }

            var t = +(price * qty);

            // Set insert values
            var q3 = {
                transaction_id: tran_id,
                product_id: product.id,
                quantity: qty,
                unit_price: price,
                total: t,
                age_restriction: product.age_restriction,
                created_at: dt,
                updated_at: dt,
            };
            db.query(q2, q3);
            calTotal(tran_id, 1);

        });
        req.flash('msg', 'New item has been added to cart!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to add item. Something went wrong!');
        req.flash('msg_type', 'error');
    }
    res.redirect('/transaction/' + tran_id + '/edit');
}

/* delete item */
const deleteItem = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var transaction_item_id = req.body.transaction_item_id,
            tran_id = req.params.id,
            query = `DELETE FROM transaction_items WHERE id = "${transaction_item_id}"`;

        db.query(query);
        calTotal(tran_id, 1);

        req.flash('msg', 'Item has been removed from cart!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to remove item. Something went wrong!');
        req.flash('msg_type', 'error');
    }

    res.redirect('/transaction/' + tran_id + '/edit');
}

/* Apply Discount */
const applyDiscount = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var tran_id = req.params.id,
            discount_type = req.body.discount_type,
            rate = req.body.rate,
            capped_at = req.body.capped_at;

        calTotal(tran_id, 2, discount_type, rate, capped_at);
        req.flash('msg', 'Discount has been applied!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to apply discount. Something went wrong!');
        req.flash('msg_type', 'error');
    }
    res.redirect('/transaction/' + tran_id + '/edit');
}

/* Apply Discount */
const applyDiscountCode = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dOnly = d.toISOString().replace('T', ' ').substring(0, 11),
            tran_id = req.params.id,
            code = req.body.code,
            query = `SELECT * FROM promotions WHERE status = 1 AND deleted_at IS NULL AND start_date < "${dOnly}" AND end_date > "${dOnly}" AND type = 2 AND code = "${code}"`;

        db.query(query, (err, data) => {
            var disc = data[0];
            calTotal(tran_id, 2, disc.discount_type, disc.rate, disc.capped_at);
        });


        req.flash('msg', 'Discount has been applied!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to apply discount. Something went wrong!');
        req.flash('msg_type', 'error');
    }
    res.redirect('/transaction/' + tran_id + '/edit');
}


/* recalculate route */
const recalTotal = (req, res, next) => {
    try {
        var tran_id = req.params.id;
        calTotal(tran_id, 1);
        req.flash('msg', 'Recalculation completed!');
        req.flash('msg_type', 'success');
    } catch (error) {
        req.flash('msg', 'Failed to recalculate. Something went wrong!');
        req.flash('msg_type', 'error');
    }
    res.redirect('/transaction/' + tran_id + '/edit');
}

/* Pay by Card */
const byCard = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dt = d.toISOString().replace('T', ' ').substring(0, 19),
            tran_id = req.params.id,
            q = `SELECT * FROM transactions WHERE id = ${tran_id}`;
        db.query(q, (err, data) => {
            var q2 = `UPDATE transactions SET ? WHERE id = ${tran_id}`,
                d = {
                    payment: data[0].grand_total,
                    changes: 0,
                    payment_method: 'card',
                    status: 'completed',
                    updated_at: dt,
                };
            db.query(q2, d);
        });
        req.flash('msg', 'Payment completed!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to proceed payment. Something went wrong!');
        req.flash('msg_type', 'error');
    }
    res.redirect('/transaction/' + tran_id + '/show');
}

/* Pay by Cash */
const byCash = async (req, res, next) => {
    await db.beginTransaction();

    try {
        var d = new Date(),
            dt = d.toISOString().replace('T', ' ').substring(0, 19),
            tran_id = req.params.id,
            payment = req.body.payment,
            q = `SELECT * FROM transactions WHERE id = ${tran_id}`;
        db.query(q, (err, data) => {
            var q2 = `UPDATE transactions SET ? WHERE id = ${tran_id}`,
                changes = +(payment - data[0].grand_total),
                d = {
                    payment: payment,
                    changes: changes,
                    payment_method: 'cash',
                    status: 'completed',
                    updated_at: dt,
                };

            db.query(q2, d);
        });
        req.flash('msg', 'Payment completed!');
        req.flash('msg_type', 'success');
        db.commit();
    } catch (error) {
        db.rollback();
        req.flash('msg', 'Failed to proceed payment. Something went wrong!');
        req.flash('msg_type', 'error');
    }
    res.redirect('/transaction/' + tran_id + '/show');
}

/* recalculate function */
function calTotal(tran_id, type = 1, disc_type, rate, capped) {
    // Type 1: Cart Discount, 2: External Discounts (Apply Discount/Discount Code)
    var d = new Date(),
        dOnly = d.toISOString().replace('T', ' ').substring(0, 11),
        dt = d.toISOString().replace('T', ' ').substring(0, 19),
        query = `SELECT * FROM transaction_items WHERE transaction_id = ${tran_id};
                SELECT * FROM transactions WHERE id = ${tran_id};
                SELECT * FROM promotions WHERE id = 1 AND status = 1 AND start_date < "${dOnly}" AND end_date > "${dOnly}" AND deleted_at IS NULL`;

    db.query(query, (err, data) => {
        if (err) throw err;

        var t = 0, totalQty = 0;
        data[0].forEach(val => {
            t += val.total;
            totalQty += val.quantity;
        });

        var tax = +((t * 0.1).toFixed(2));       // convert string to number using + operator
        var disc = 0,
            cartDis = data[2][0];

        if (type == 1) {     // Apply Cart Discount
            if (t >= cartDis.min_spending) {
                disc = calDisc(t, tax, cartDis.discount_type, cartDis.rate, cartDis.capped_at);
            }
        } else {         // Apply External Discounts
            disc = calDisc(t, tax, disc_type, rate, capped);
        }
        var grand = +(t + tax - disc);

        var d1 = {
            total_quantity: totalQty,
            subtotal: +t,
            tax: +tax,
            discount: +disc,
            grand_total: grand,
            updated_at: dt,
        };
        var q2 = `UPDATE transactions SET ? WHERE id = ${tran_id}`;
        db.query(q2, d1);
    });
}

/* Calculate & return discount based on type, cap  */
function calDisc(total, tax, type, rate, capped) {
    var deduct;
    if (type == 1) {
        deduct = +((total + tax) * (rate / 100));
    } else {
        deduct = rate;
    }

    if (capped != null) {
        if (deduct >= capped) {
            deduct = capped;
        }
    }
    return deduct;
}

module.exports = { index, create, store, edit, show, destroy, addItem, deleteItem, applyDiscount, applyDiscountCode, recalTotal, byCard, byCash };