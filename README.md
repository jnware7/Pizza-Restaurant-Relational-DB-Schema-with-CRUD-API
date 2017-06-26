# Pizza-Restaurant-Relational-DB-Schema-with-CRUD-API

## Description

Piccadilly Pizza is a diamond in the rough: their deep dish is the bomb dot com, but they’re just breaking even because they lack the easy-to-use online ordering interface that will give them a competitive edge.

Your job is to design a schema based on the guidelines Piccadilly Pizza has provided, complete with a programmatic component that allows for basic CRUD operations on the data.

As a proof of concept, you will first create an E-R diagram that specifies the relationships between these data types. You can use a tool like Draw.io, WWW SQL Designer or MySQL Workbench to create this diagram (here’s an example).

Your job is also to provide a basic web API that provides the ability to CRUD the data in each of these tables. Designing a RESTful API With Node and Postgres is a great resource for getting started - please adapt the implementation to your own needs.

Use the product/user stories from the specs to guide the design of your database schema and API.

Acronyms from title:

RDB = Relational DataBase
CRUD = Create, Read, Update, Delete
API = Application Programming Interface
Context


# Specifications

## Product/User Stories

Can track all customers and any relevant customer information, including but not limited to…

 - [ ]customer ID
 - [ ]name
 - [ ]username/login details
 - [ ] delivery address(es)
 - [ ] phone number(s)
 - [ ] payment methods on file (e.g., cash, credit, check - if credit, then the card number should also be stored)
## Preferences & ingredients

 Can track each customer’s pizza preferences
 Can track the ingredients that comprise each of these preferences (e.g., onions, ham, pineapple, anchovies, bacon, etc.)
Can track standard drinks, including…

 - [ ] a product ID
 - [ ] drink description
 - [ ] manufacturer
 - [ ] supplier
 - [ ] price
# Can track pizza data:

 - [ ] sizes (small, medium, large, extra large)
 - [ ] types (thick or thin crust)
 - [ ] ingredients (pepperoni, sausage, mushrooms, onions, cheese, etc.)
 - [ ] price data for these pizza sizes and ingredients
 - [ ] happy hour price discounts
Other

 - [ ]The artifact is a GitHub repo
 - [ ] SQL files are well formatted and readable.
 - [ ] All the SQL keywords are capitalized.
 - [ ] The E-R diagram minimizes data redundancy.
 - [ ] Table names are singular, not plural.
 - [ ] Variables, functions, files, etc. have appropriate and meaningful names.
 - [ ] Code is well organized into a meaningful file structure.
 - [ ] The artifact produced is properly licensed, preferably with the MIT license.
 - [ ] There are commands provided (using npm run and/or with executable scripts in a bin/ directory) to:

 Create the database
 Drop the database
 Insert sample/seed data to the database
 Start the web server
HINT: if you see an item in bold, you may want to consider creating a table for that item. :)

Please feel free to adapt the content of the data to your personal preferences or adjust your schema to support any other data types or operations you can think of.

Get creative!

# Stretch

 Maintains a history of transactions of all purchases including price, payment method, and delivery date
 Supports an interface for delivery drivers
 Delivery interface tracks the addresses each driver delivers to
 Delivery interface tracks the dates/times of delivery
 Delivery interface tracks money collected (including tips)
 Supports calculating the proper sales tax (the pizza joint located at the intersection of the four corners of the US, so you might have to support sales taxes for Colorado, Arizona, New Mexico and Utah)
 API documentation is included in the repo with details on each route, parameters/headers needed, and the structure of returned data
 A simple web user interface exists that allows users CRUD the data in the specification (this interface can be as simple as a checkbox that “orders” a pizza by creating a DB record in one of your tables)
 Implements a testing suite (mocha/chai)
Entity Relationship Diagram

 The E-R diagram supports all the product/user stories
 The E-R diagram indicates whether or not each relationship in the schema is is one to one, one to many, or many to many
 The E-R diagram contains a list of attributes for each entity and relationship
 The E-R diagram contains the SQL data types of each attribute in the schema
 The E-R diagram notes any foreign or primary keys in each table in the schema
 The E-R diagram is included in the artifact (as a .png or some other easily viewable format)
Resources

18+ Best Online Resources for Learning SQL and Database Concepts
Designing a RESTful API With Node and Postgres
2017 Learners Guild. All right reserved.
