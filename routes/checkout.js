var express = require('express');
var router = express.Router();
var transactionController = require('../controllers/transactionController');

router.get('/create', transactionController.create);
router.post('/store', transactionController.store);

module.exports = router;