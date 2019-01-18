var express = require('express');
var mysql = require('mysql');
var app = express();

const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'my_db'
});

connection.connect(function(err) {
    if (err) throw err;
    console.log('database connected')
});
module.exports = connection;