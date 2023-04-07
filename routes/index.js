
var express = require('express');
var router = express.Router();
var authController = require('../controllers/authController');

router.get('/login', authController.loginIndex);
router.post('/login', authController.login);

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', {
    title: 'Dashboard',
    msg_type: req.flash('msg_type'),
    msg: req.flash('msg'),
  });
});

module.exports = router;