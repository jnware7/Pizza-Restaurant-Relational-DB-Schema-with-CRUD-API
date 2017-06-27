var express = require('express');
var db = require('./database')
var app = express();

var port = 3000;


app.set('views','./src/views');

var handlebars = require('express-handlebars')
app.engine('.hbs', handlebars({extname:'hbs'}));

app.set('view engine','.hbs');

var bodyParser = require('body-parser')
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended:false }))



var customerRouter = express.Router();
var orderRouter = express.Router();


customerRouter.route('/')
  .get(function(req,res){
    db.readALLCustomers()
     .then(function(customer){
       res.json(customer)
     })
     .catch(function(error){
       res.send(error)
     })
  })
  customerRouter.route('/:id')
    .get(function(req,res){
      var customerId = req.params.id
      db.readCustomer(customerId)
       .then(function(customer){
         res.json(customer)
       })
      .catch(function(error){
        res.send(error)
      })
    })

app.use('/customer',customerRouter);


orderRouter.route('/')
  .get(function(req,res){
    db.readAllOrders()
    .then(function(order){
      res.json(order)
    })
    .catch(function(error){
      res.send(error)
    })
})
orderRouter.route('/:id')
  .get(function(req,res){
    var orderId = req.params.id
    db.readOneOrder(orderId)
    .then(function(order){
      res.json(order)
    })
    .catch(function(error){
      res.send(error)
    })
  })
app.use('/order',orderRouter);




// AUTHENTICATION
// ==============================================

app.route('/login')

    // show the form (GET http://localhost:3000/login)
    .get(function(req, res) {
        res.render('login');
    })

    // process the form (POST http://localhost:3000/login)
    .post(function(req, res) {
      var use_rname = req.body.username
      var password = req.body.password
      db.createCustomer(user_name, password)

        console.log('processing');
        res.render('login');
    })
  //   .catch(function(error){
  //     res.send(error)
  //   })
  // })
//...

app.listen(3000,function(err){
  console.log('=>>>>  running server on port : ' + port);
});
