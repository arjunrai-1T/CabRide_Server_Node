
import express           from "express";
import http              from "http";
import { Server }        from "socket.io";
import authicationRouter from "../authenticate/authincation.js";
import path              from "path";
import { log }           from "console";
import Database          from "../db/database.js";
import winston,{format}  from "winston";
import moment            from "moment";
import bcrypt            from "bcrypt";

export default function QueueChat(port)
{

    global.app           = express();
    global.server        = http.createServer(app);
    global.io            = new Server(server);
    global.nodeLogger    = { logger: null,
                             log({level,message}){
                                switch(level){
                                    case "info" : logger.log({ level: 'info', message: message })
                                                break;
                                    case "error" : logger.log({ level: 'error', message: message})
                                                break;              
                                }//switch end
                            }//log end
                        };
    //Create Server
    global.server.listen(port, function() {
        console.log('[server.listen] QueueChat Server listening on *:3000');
    });

    //Setup web file
    global.app.use('/',  express.static(path.join(path.resolve(),"/QueueChat/public")) );
    
    //setup socket io
    global.io.on('connection', (socket) => {
        console.log('a user connected');
    });
    
    //Setup all middleware
    global.app.use(authicationRouter);

    //Setup Logger 
    global.logFIleName = "Queuechat_"+moment().format('YYYY-MM-DD_hh-mm-ss')+".log";
    nodeLogger.logger  = winston.createLogger({
        level       : "silly",
        exitOnError : true,
        silent      : false,
        format      : format.combine(
                        format.timestamp(),
                        format.json(),
                        format.label({ label:'[QueueChat]' }),
                        format.timestamp({ format:"YYYY-MM-DD HH:MM:SS" }),
                        format.printf( info => ` ${info.label}  [${info.timestamp}]  ${info.level} : ${info.message}` )
                    ),
        transports : [ new winston.transports.Console(), new winston.transports.File({ filename: logFIleName }) ]
    });

    //Create Database Connection
    global.DatabaseObj = new Database({host: "127.0.0.1",port: 3306,dbname: "queuechat",userid: "root",pwd:"",logger: nodeLogger.logger})
    global.DatabaseObj.connectDatabase();

    // var pwd          =  "789103";
    // const saltRounds = 10;
    // const salt       = bcrypt.genSaltSync(saltRounds);
    // var hash1        = bcrypt.hashSync(pwd,saltRounds);
    // console.log(hash1);
    // setInterval(function(){
    //     console.log( bcrypt.compareSync(pwd, hash1) ); // true
    // },1000);

    
}//++void QueueChat() end

