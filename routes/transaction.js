var express = require('express');
var router = express.Router();
var transactionController = require('../controllers/transactionController');

router.get('/index', transactionController.index);
router.get('/create', transactionController.create);
router.post('/store', transactionController.store);
router.get('/:id/show', transactionController.show);
router.get('/:id/edit', transactionController.edit);
// router.post('/update/:id', transactionController.update);
router.post('/:id/destroy', transactionController.destroy);

router.post('/:id/addItem', transactionController.addItem);
router.post('/:id/deleteItem', transactionController.deleteItem);
router.get('/:id/recalTotal', transactionController.recalTotal);
router.get('/:id/byCard', transactionController.byCard);
router.post('/:id/byCash', transactionController.byCash);
router.post('/:id/applyDiscount', transactionController.applyDiscount);

module.exports = router;