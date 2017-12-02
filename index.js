var express = require('express')
var app = express();

app.get('/', function(req, res){
	res.send('Hello Ssv!')
})

app.listen(8000, function(){
	console.log('Mohana Ssv!')
})