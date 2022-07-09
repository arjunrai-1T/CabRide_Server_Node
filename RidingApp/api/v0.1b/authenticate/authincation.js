import express from "express";

var authicationRouter;
authicationRouter = express.Router({caseSensitive: true});
authicationRouter.use(express.json({limit: "1024MB"}))

authicationRouter.use("/api/signup",async function(req,res,next){
    //++console.log( req.body );
    var loginRecord = await global.DatabaseObj.isUserLoginIdPresent({mobile_number: req.body.user_loginid,email_id: "" });
    console.log( loginRecord );
    if( undefined == loginRecord.result ){
        var rtcode = await global.DatabaseObj.signup(req.body);
        console.log(rtcode);
        res.json( rtcode );
    }else{
        res.json({status: "fail",message: "same login id found",sqlMessage:""});
    }//else end
});
authicationRouter.use("/api/signin",async function(req,res,next){
    var loginRecord = await global.DatabaseObj.signin(req.body);
    console.log( loginRecord );
    res.json( loginRecord );
});
authicationRouter.use("/api/forgotpwd",function(req,res,next){
    res.send("Hello Api forgotpwd")
});
authicationRouter.use("/api/checkuserexist",function(req,res,next){
    res.send("Hello Api forgotpwd")
});
export default authicationRouter;

