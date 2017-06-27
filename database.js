var connectionString = 'http://localhost:5432/pizzadb'
var pgp = require ('pg-promise')()
var db = pgp(connectionString)

//CREATE//
//...users
var CREATE_LOGIN =
`INSERT INTO user_login(
  user_login_name  ,
  password  ,
  salt  ,
) VALUES($1,$2,$3)`
//...customer
var CREATE_CUSTOMER =
`INSERT INTO customer(
name,
address,
phone_num,
pay_meth
) VALUES($1,$2,$3,$4)
)`
//...ORDER
// var CREATE_ORDER =
// `INSERT INTO pizzadata(
// size=$1,
// type=$2,
// pizza_id=$3,
// price=$4,
// )`
//
//READ//

//... ONE customer
var READ_CUSTOMER =
`SELECT * FROM customer WHERE id=$1`
//... All customers
var READ_ALL_CUSTOMERS =
`SELECT * FROM customer `

//... ONE ORDER
var READ_ONE_ORDER =
`SELECT * FROM orderpizza_data WHERE id=$1`
//... All ORDER
var READ_ALL_ORDERS =
`SELECT * FROM pizzadata`


// //UPDATE//
//
// //... ONE customer
// var EDIT_CUSTOMER =
// `UPDATE customer SET
// size=$1,
// type=$2,
// pizza_id=$3,
// price=$4,`
//
// //... ONE ORDER
// var EDIT_ORDER =
// `UPDATE pizzadata SET
// name =$1,
// address=$2,
// phone_num=$3,
// user_name=$4,
// password=$5,
// pay_method=$6,
// prefrence_id=$7,
// pizzadata_id=$8,
// drink_id=$9`
//
// //DELETE
//
// //... ONE customer
// var REMOVE_CUSTOMER =
// `DELETE FROM customer WHERE id=$1`
// //... ONE ORDER
// var REMOVE_ORDER =
// `DELETE FROM pizzadata WHERE id=$1`
//
//
// function createCustomer(){
//   return db.none(CREATE_CUSTOMER,[])
// };
// function createOrder(){
//   return db.none(CREATE_ORDER,[])
// };
//
//
// function readCustomer(id){
//   return db.one(READ_CUSTOMER,[id])
// };
// function readALLCustomers(){
//   return db.many(READ_ALL_CUSTOMERS,[])
// };
// function readOneOrder(id){
//   return db.one(READ_ONE_ORDER,[id])
// };
// function readAllOrders(){
//   return db.many(READ_ALL_ORDERS,[])
//
//
// };
// function editCustomer(id){
//   return db.one(EDIT_CUSTOMER,[id])
// };
// function editOrder(id){
//   return db.one(EDIT_ORDER,[id])
//
//
// };
// function removeCustomer(id){
//   return db.none(REMOVE_CUSTOMER,[id])
// };
// function removeOrder(id){
//   return db.none(REMOVE_ORDER,[id])
// }
//
// module.exports = {
//   createCustomer,
//   createOrder,
//   readCustomer,
//   readALLCustomers,
//   readOneOrder,
//   readAllOrders,
//   editCustomer,
//   editOrder,
//   removeCustomer,
//   removeOrder
// }
