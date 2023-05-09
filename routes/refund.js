var express = require('express');
var router = express.Router();
var refundController = require('../controllers/refundController');

router.get('/index', refundController.index);
router.get(':id/show', refundController.show);

module.exports = router;