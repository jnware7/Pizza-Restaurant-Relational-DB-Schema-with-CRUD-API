var express = require('express');
var db = require('./database')
var app = express();

var port = 3000;

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

app.listen(3000,function(err){
  console.log('=>>>>  running server on port : ' + port);
});
