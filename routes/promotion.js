var express = require('express');
var router = express.Router();
var promotionController = require('../controllers/promotionController');

router.get('/index', promotionController.index);
router.get('/create', promotionController.create);
router.post('/store', promotionController.store);
router.get('/:id/edit', promotionController.edit);
router.post('/:id/update', promotionController.update);
router.post('/:id/destroy', promotionController.destroy);

module.exports = router;