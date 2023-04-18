var express = require('express');
var router = express.Router();
var productController = require('../controllers/productController');

router.get('/index', productController.index);
router.get('/create', productController.create);
router.post('/store', productController.store);
router.get('/:id/edit', productController.edit);
router.post('/:id/update', productController.update);
router.post('/:id/destroy', productController.destroy);

module.exports = router;