/**
 * An example of an express-nodejs application on Google App Engine
 */

var express = require('express');
var app = express();

app.get('/', function(req, res){
  res.send('<strong>This is Node.js running in App Engine</strong>');
});

app.listen(8080, '0.0.0.0');
console.log('Server running at http://0.0.0.0:8080/');