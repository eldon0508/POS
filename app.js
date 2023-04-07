var createError = require('http-errors');
const express = require('express');
var path = require('path');
const flash = require('connect-flash');
const session = require('express-session');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
// var categoryRouter = require('./routes/category');
var productRouter = require('./routes/product');
var staffRouter = require('./routes/staff');
var customerRouter = require('./routes/customer');
var promotionRouter = require('./routes/promotion');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(cookieParser('secret'));
app.use(express.static(path.join(__dirname, 'public')));

app.use(session({
  secret: 'secret',
  saveUninitialized: true,
  resave: true,
}));
app.use(flash());

app.use('/', indexRouter);
app.use('/staff', staffRouter);
// app.use('/category', categoryRouter);
app.use('/product', productRouter);
app.use('/customer', customerRouter);
app.use('/promotion', promotionRouter);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;