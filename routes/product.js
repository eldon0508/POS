var express = require('express');
var router = express.Router();
var productController = require('../controllers/productController');

router.get('/index', productController.index);
router.get('/create', productController.create);
router.post('/store', productController.store);
router.get('/edit/:id', productController.edit);
router.post('/update/:id', productController.update);
router.post('/destroy/:id', productController.destroy);

module.exports = router;