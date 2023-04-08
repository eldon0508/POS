var express = require('express');
var router = express.Router();
var staffController = require('../controllers/staffController');

router.get('/index', staffController.index);
router.get('/create', staffController.create);
router.post('/store', staffController.store);
router.get('/edit/:id', staffController.edit);
router.post('/update/:id', staffController.update);
router.post('/destroy/:id', staffController.destroy);

module.exports = router;