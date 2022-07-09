
/*
var express = require("express");
var app = express();
var router = express.Router();
var port = 3000;
const path = require('path')

const router1 = require('./myrouter.js');
console.log(router1);

//router.get('/', (req, res, next) => {
//  res.send("Hello");
//})

console.log(path.join(__dirname,"public"));
//app.use("/",express.static(path.join(__dirname,"public")))

app.use("/",function(req,res,next){
    res.send("Hello I am Index");
});

app.use(router1.router1)

app.listen(port,function(){
    console.log("Server is Running");
});
*/

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//++https://medium.com/@raj_36650/integrate-socket-io-with-node-js-express-2292ca13d891

const app  = require('express')();
const http = require('http').Server(app);
const io   = require('socket.io')(http);


app.get('/', function(req, res) {
   //res.sendfile('index.html');
   res.send("Hello Socket HTML")
});

const routerModule = require('./myrouter.js');
app.use(routerModule.router1);

//Whenever someone connects this gets executed
io.on('connection', function(socket) {
   console.log('A user connected');
   //Whenever someone disconnects this piece of code executed
   socket.on('disconnect', function () {
      console.log('A user disconnected');
   });
});


http.listen(3000, function() {
   console.log('listening on *:3000');
});
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////