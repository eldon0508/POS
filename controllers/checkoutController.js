var db = require('../database');


const searchProd = (req, res, next) => {
    var query = `SELECT * FROM products WHERE deleted_at IS NULL`;

    db.query(query, (err, data) => {
        if (err) throw err;

        // return list of products to select
    });
}

const categoryList = (req, res, next) => {
    var query = `SELECT id, name FROM categories WHERE status = 1 AND deleted_at IS NULL`;

    db.query(query, (err, data) => {
        if (err) throw err;

        // return lists of categories
    });
}

const prodBasedOnCategory = (req, res, next) => {
    var query = `SELECT * FROM products WHERE category_id = ${req.params.id}`;

    db.query(query, (err, data) => {
        if (err) throw err;
    });
}



// const updateItem = (req, res, next) => {
//     var d = new Date(),
//         dt = d.toISOString().replace('T', ' ').substring(0, 19),
//         q2 = {
//             quantity: req.body.quantity,
//             unit_price: req.body.unit_price,
//             updated_at: dt,
//         }
//     var query = `UPDATE transaction_items SET ? WHERE id = "${req.params.id}"`;

//     db.query(query, (err, data) => {
//         if (err) throw err;
//     });
// }

const calTotal = (req, res, next) => {
    var id = req.params.id,
        query = `SELECT* FROM transaction_items WHERE transaction_id = ${id}`;

    db.query(query, (err, data) => {
        if (err) throw err;

        var subtotal = 0,
            totalQty = 0;
        data.forEach(val => {
            subtotal += val.unit_price;
            totalQty += val.quantity;
        });

        var tax = (subtotal * 0.1).toFixed(2);

        var d1 = {
            total_quantity: totalQty,
            subtotal: subtotal,
            tax: tax,
            grand_total: (subtotal + tax),
        }

        var q2 = `UPDATE transactions SET ? WHERE transaction_id = ${id}`;

        db.query(q2, d1, (err, data) => {
            if (err) throw err;
        });
    });
}

const payment = (req, res, next) => {

}

module.exports = { searchProd, calTotal };