var express = require('express');
var router = express.Router();
var promotionController = require('../controllers/promotionController');

router.get('/index', promotionController.index);
router.get('/create', promotionController.create);
router.post('/store', promotionController.store);
router.get('/edit/:id', promotionController.edit);
router.post('/update/:id', promotionController.update);
router.post('/destroy/:id', promotionController.destroy);

module.exports = router;