var inquirer = require("inquirer");
var mysql = module.require("mysql");

var cnxn = mysql.createConnection({
	host: "localhost",
	user: "root",
	password: "mattdoug",
	database: "bamazon"
});

cnxn.connect(function(err) {
	if (err) throw err;
	console.log("NEW PURCHASE ORDER");
	showProducts(1);
});

function showProducts(min) {
    console.log("\nProducts . . .");
	var sql = "SELECT * FROM `products` WHERE `stock_quantity` >= " + min + ";";
	cnxn.query(sql, function (err, result, fields) {
    	if (err) throw err;
		var rows = [];
		var cols = [fields[0].name];
		var colMax = [fields[0].name.length];
		for (i = 1; i < fields.length; i++) {
			cols.push(fields[i].name);
			colMax.push(fields[i].name.length);
		}
		rows.push(cols);
		for (j = 0; j < result.length; j++) {
			var tmp = [result[j][cols[0]].toString()];
			if (result[j][cols[0]].toString().length > colMax[0])
				colMax[0] = result[j][cols[0]].toString().length;
			for (k = 1; k < cols.length; k++) {
    			tmp.push(result[j][cols[k]].toString());
    			if (result[j][cols[k]].toString().length > colMax[k])
    				colMax[k] = result[j][cols[k]].toString().length;
    		}
    		rows.push(tmp);
		}
    	console.log();
		for (l = 0; l < rows.length; l++) {
			var tmp = " ";
			for (m = 0; m < cols.length; m++) {
				tmp += rows[l][m];
				for (n = 0; n < (colMax[m] - rows[l][m].toString().length); n++) {
					tmp += " ";
				}
				tmp += "   ";
			}
			// https://stackoverflow.com/questions/9781218/how-to-change-node-jss-console-font-color
			if (l == 0) {
				console.log(' \x1b[1m\x1b[44m\x1b[37m %s \x1b[0m ', tmp);
			} else if (l % 2 == 0) {
				console.log(' \x1b[44m \x1b[0m\x1b[46m\x1b[37m%s\x1b[0m\x1b[44m \x1b[0m ', tmp);
			} else {
				console.log(' \x1b[44m \x1b[0m\x1b[47m\x1b[36m%s\x1b[0m\x1b[44m \x1b[0m ', tmp);
			}
		}
		var fil = "", ret = (l - 1).toString() + " records";
		for (o = 0; o < (tmp.length - ret.length); o++) {
			fil += " ";
		}
		ret = fil + ret;
		console.log(' \x1b[1m\x1b[44m\x1b[37m %s \x1b[0m ', ret);
		console.log();
		mainPrompt();
  	});
}

function mainPrompt() {
	inquirer.prompt([
    {
      name: "id",
      message: "\nEnter Product ID:",
      validate: function(value) {
		if (!isNaN(value)) {
			return true;
		} else {
			return false;
		}
      }
    },
    {
      name: "qty",
      message: "\nEnter Purchase Quantity:",
      validate: function(value) {
		if (!isNaN(value)) {
			return true;
		} else {
			return false;
		}
      }
    }
	]).then(function(input) {
		buyProduct(input.id, input.qty);
	});
}

function buyProduct(id, qty) {
	cnxn.query("SELECT `product_name`, `stock_quantity`, `price` FROM `products` WHERE `item_id` = " + id + ";", function (err, result) {
    	if (err) throw err;
    	if (result.length > 0) {
	    	var name = result[0]["product_name"];
	    	var stock = result[0]["stock_quantity"];
	    	if (qty <= stock) {
	    		var price = result[0]["price"];
	    		var sql = "UPDATE `products` SET `stock_quantity` = `stock_quantity` - " + qty + " WHERE `item_id` = " + id + ";";
				cnxn.query(sql, function (err, result, fields) {
	    			if (err) throw err;
	    			console.log("Order Confirmed!");
	  			});
	    		console.log("You have ordered " + qty + " of " + name + ". Total cost is $" + (price.toFixed(2) * qty));
	    	} else {
	    		console.log("Available quantity of " + name + " is " + stock + ". Please reduce your order quantity.");
	    	}
	    } else {
	    	console.log("Product not found.");
	    }
    	cnxn.end();
  	});
}