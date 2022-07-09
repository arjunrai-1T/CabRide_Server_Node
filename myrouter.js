var express = require("express");
var router1 = express.Router();
router1.use("/api/user",function(req,res,next){
    res.send("Hello Api User")
})
//module.exports=router1;
exports.router1= router1
