var express = require('express');
var router = express.Router();
var customerController = require('../controllers/customerController');

router.get('/index', customerController.index);
router.get('/create', customerController.create);
router.post('/store', customerController.store);
router.get('/:id/edit', customerController.edit);
router.post('/:id/update', customerController.update);
router.post('/:id/destroy', customerController.destroy);
router.post('/new/:id/tran', customerController.newTran);

module.exports = router;