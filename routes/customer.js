var express = require('express');
var router = express.Router();
var customerController = require('../controllers/customerController');

router.get('/index', customerController.index);
router.get('/create', customerController.create);
router.post('/store', customerController.store);
router.get('/edit/:id', customerController.edit);
router.post('/update/:id', customerController.update);
router.post('/destroy/:id', customerController.destroy);
router.post('/new/tran/:id', customerController.newTran);

module.exports = router;