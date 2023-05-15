var createError = require('http-errors');
const express = require('express');
const path = require('path'),
  flash = require('connect-flash'),
  session = require('express-session'),
  cookieParser = require('cookie-parser'),
  logger = require('morgan'),
  passport = require('passport'),
  fileUpload = require('express-fileupload');

// Routes declaration
var indexRouter = require('./routes/index'),
  categoryRouter = require('./routes/category'),
  productRouter = require('./routes/product'),
  staffRouter = require('./routes/staff'),
  customerRouter = require('./routes/customer'),
  promotionRouter = require('./routes/promotion'),
  transactionRouter = require('./routes/transaction'),
  refundRouter = require('./routes/refund');

const app = express();

/* Protecting routes declaration */
function isAuth(req, res, next) {
  if (req.isAuthenticated()) { return next(); }
  req.flash('msg', 'Unauthorised access! Please login!');
  req.flash('msg_type', 'error');
  res.redirect('/login');
}
function isManager(req, res, next) {
  if (req.user.role == 1) { return next(); }
  req.flash('msg', 'Unauthorised! Manager access required!');
  req.flash('msg_type', 'warning');
  res.redirect('back');
}
function isStaff(req, res, next) {
  if (req.user.role == 1 || req.user.role == 2) { return next(); }
  req.flash('msg', 'Unauthorised access! Please login!');
  req.flash('msg_type', 'error');
  res.redirect('/login');
}
/* Protecting routes */

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
app.use(passport.authenticate('session'));
app.use(fileUpload());

// Routes
app.use('/', indexRouter);
app.use('/staff', [isAuth, isManager], staffRouter);
app.use('/category', [isAuth, isManager], categoryRouter);
app.use('/product', [isAuth, isManager], productRouter);
app.use('/customer', [isAuth, isStaff], customerRouter);
app.use('/promotion', [isAuth, isManager], promotionRouter);
app.use('/transaction', [isAuth, isStaff], transactionRouter);
app.use('/refund', [isAuth, isStaff], refundRouter);

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