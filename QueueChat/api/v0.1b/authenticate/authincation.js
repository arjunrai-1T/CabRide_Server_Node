import express from "express";

var authicationRouter;
authicationRouter = express.Router({caseSensitive: true});
authicationRouter.use(express.json({limit: "1024MB"}))

authicationRouter.use("/api/signup",function(req,res,next){
    console.log( req.body );
    global.DatabaseObj.signup(req.body);
    res.json({ status: 'success' });
});
authicationRouter.use("/api/signin",function(req,res,next){
    res.send("Hello Api signin")
});
authicationRouter.use("/api/forgotpwd",function(req,res,next){
    res.send("Hello Api forgotpwd")
});
authicationRouter.use("/api/checkuserexist",function(req,res,next){
    res.send("Hello Api forgotpwd")
});
export default authicationRouter;

