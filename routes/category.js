var express = require('express');
var router = express.Router();
var categoryController = require('../controllers/categoryController');

router.get('/index', categoryController.index);
router.get('/create', categoryController.create);
router.post('/store', categoryController.store);
router.get('/edit/:id', categoryController.edit);
router.post('/update/:id', categoryController.update);
router.post('/destroy/:id', categoryController.destroy);

module.exports = router;