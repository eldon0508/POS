var express = require('express');
var router = express.Router();
var transactionController = require('../controllers/transactionController');

router.get('/index', transactionController.index);
router.get('/create', transactionController.create);
router.post('/store', transactionController.store);
router.get('/show/:id', transactionController.show);
router.get('/edit/:id', transactionController.edit);
// router.post('/update/:id', transactionController.update);
router.post('/destroy/:id', transactionController.destroy);

router.post('/:id/addItem', transactionController.addItem);
router.post('/:id/deleteItem', transactionController.deleteItem);
router.get('/:id/recalTotal', transactionController.recalTotal);
router.get('/:id/byCard', transactionController.byCard);


module.exports = router;