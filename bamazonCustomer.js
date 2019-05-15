var mysql = require('mysql');
var inquirer = require('inquirer');
// var Table = require('cli-table');
// var chalk = require('chalk');


var connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: 'Aliale608',
  database: 'bamazon'
});

connection.connect(function(err){
  if (err) throw err;
  displayItems();
});

function displayItems() {
  connection.query(
    "select item_id, product_name, price, stock_quantity from products where stock_quantity>0",
    function(err, res) {
      if (err) throw err;
      console.log("Id \t Name \t Price \t Quantity\n");
      for (var i = 0; i < res.length; i++) {
        console.log(
          res[i].item_id + "\t" +
          res[i].product_name + "\t" +
          res[i].price + "\t" +
          res[i].stock_quantity + "\n"
        );
        
      }
      displayQuestions(res.length);
    }
  )
}

function displayQuestions(length) {
  inquirer
    .prompt ([
    {
      type: "input",
      name: "purchase_item",
      message: "Enter the Item ID of the item you would like to purchase! Press e to exit."
    }
    ])

    .then(function(answer){
      var purchaseItem = answer.purchase_item;
      if (purchaseItem.toLowerCase() === "e") {
        process.exit();
      }
      inquirer
      .prompt([
        {
          type: "input",
          name: "quantity",
          message: "How many of the selected item would you like to purchase?"
        }
      ])
      .then(function(answer) {
        if (
          purchaseItem > length +1 ||
          isNaN(purchaseItem) ||
          isNaN(answer.quantity)
        ) {
          console.log("Incorrect input");
          if (purchaseItem > length + 1 || isNaN(purchaseItem)) {
            console.log("Invalid item");
          }
          
        }




      });
    })
}