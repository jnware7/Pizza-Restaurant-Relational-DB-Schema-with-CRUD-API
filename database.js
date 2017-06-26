var connectionString = 'http://localhost:5432/pizzadb'
var pgp = require ('pg-promise')()
var db = pgp(connectionString)

//CREATE

//...customer
`INSERT INTO customer(
name,
address,
phone_num,
user_name,
password,
pay_method,
prefrence_id,
pizzadata_id,
drink_id
) VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9)
)`
//...ORDER
`INSERT INTO pizzadata(
size=$1,
type=$2,
pizza_id=$3,
price=$4,
)`

//READ

//... ONE customer
`SELECT * FROM customer WHERE id=$1`
//... All customers
`SELECT * FROM customer `

//... ONE ORDER
`SELECT * FROM pizzadata WHERE id=$1`
//... All ORDER
`SELECT * FROM pizzadata`


//UPDATE

//... ONE customer
`UPDATE customer SET
size=$1,
type=$2,
pizza_id=$3,
price=$4,`

//... ONE ORDER
`UPDATE pizzadata SET
name =$1,
address=$2,
phone_num=$3,
user_name=$4,
password=$5,
pay_method=$6,
prefrence_id=$7,
pizzadata_id=$8,
drink_id=$9`

//DELETE

//... ONE customer
`DELETE FROM customer WHERE id=$1`
//... ONE ORDER
`DELETE FROM pizzadata WHERE id=$1`
