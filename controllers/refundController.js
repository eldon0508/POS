var db = require('../database');

/* index */
const index = (req, res, next) => {
    var query = `SELECT r.*, c.first_name AS customer_fname, c.last_name AS customer_lname FROM refunds r 
            LEFT JOIN customers c ON r.customer_id = c.id
            WHERE r.deleted_at IS NULL`;

    db.query(query, function (err, data) {
        if (err) { res.render('500'); }

        res.render('refund/index', {
            title: 'Refund',
            results: data,
            msg_type: req.flash('msg_type'),
            msg: req.flash('msg'),
            req: req,
        });
    });
}

/* show */
const show = (req, res, next) => {
    res.render('refund/show', {
        title: 'Refund',
        req: req,
    });
}

module.exports = { index, show };