var createError = require('http-errors');
var express = require('express');
var path = require('path');
var flash = require('connect-flash');
var session = require('express-session')
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var toastr = require('express-toastr');

var indexRouter = require('./routes/index');
var userRouter = require('./routes/user');
var productRouter = require('./routes/product');
// var customerRouter = require('./routes/customer');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

app.use(cookieParser('secret'));
app.use(session({
  secret: 'secret',
  saveUninitialized: true,
  resave: true,
}));
app.use(flash());
app.use(express.static(path.join(__dirname, 'public')));
app.use(toastr());
app.use(function (req, res, next) {
  res.locals.toasts = req.toastr.render()
  next();
});

app.use('/', indexRouter);
app.use('/user', userRouter);
app.use('/product', productRouter);
// app.use('/customer', customerRouter);

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
