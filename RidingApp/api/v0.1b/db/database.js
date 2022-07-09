import { Sequelize,QueryTypes } from "sequelize";
import crypto                   from "crypto";
import { v4 as uuidv4 }         from 'uuid';
import { v1 as uuidv1 }         from 'uuid';
import { v5 as uuidv5 }         from 'uuid';
import moment                   from "moment";
import bcrypt                   from "bcrypt";

export default class Database{

    constructor({host,port,dbname,userid,pwd,logger}){
        this.host   = host;
        this.port   = port; 
        this.dbname = dbname;
        this.userid = userid;
        this.pwd    = pwd;
        this.logger = logger;
        this.dbcon  = null;
    }//constructor() end

    async connectDatabase() {
    
        this.dbcon = new Sequelize(this.dbname,this.userid,this.pwd,{host: this.host,port: this.port,dialect:"mysql"}) ;
        try {
            await this.dbcon.authenticate();
            this.logger.log({ level: 'info', message: '[connectDatabase()] Connection has been established successfully.' });
            return true;
        } catch (error) {
            this.logger.log({ level: 'error', message: '[connectDatabase()] Connection has been established successfully.' });
            return false;
        }//catch end

    }//async connectDatabase() end

    async disconnectDatabase() {
    
        try {
            await this.dbcon.close();
            this.logger.log({ level: 'info', message: '[disconnectDatabase()] Connection has been Closed success.' });
            return true;
        } catch (error) {
            this.logger.log({ level: 'error', message: '[disconnectDatabase()] Connection has been Closed fail.' });
            return false;
        }//catch end

    }//async disconnectDatabase() end

    getcrc32(str) {

            var table = []
            for (var i = 0; i < 256; i++) {
                var c = i
                for (var j = 0; j < 8; j++) {
                    c = (c & 1) ? (0xedb88320 ^ (c >>> 1)) : (c >>> 1)
                }
                table.push(c);
            }//for end
            var crc = 0xedb88320;
            str = unescape(encodeURIComponent(str))
            if (!crc) crc = 0
            crc = crc ^ (-1)
            for (var i = 0; i < str.length; i++) {
                var y = (crc ^ str.charCodeAt(i)) & 0xff;
                crc = (crc >>> 8) ^ table[y];
            }//for end
            crc = crc ^ (-1)
            return crc >>> 0;
    
    }//getcrc32 () end

    getUniqueId( str,prefix,hash_length=8){
        var data        = str+uuidv4()+moment().format('YYYY-MM-DD')+moment().format('hh-mm-ss')+this.getcrc32(str);
        const data_hash = crypto.createHash('sha256').update(data).digest("hex");
        const rtstr     = prefix+data_hash.substring(0,hash_length-1);
        console.log(  rtstr );
        return rtstr;
    }//getUniqueId() end

    getErrorCode(errorMssg){
        switch(errorMssg){
            case "SequelizeUniqueConstraintError": return -1;
            default : return 0;
        };//switch end
    }//getErrorCode() end

    getPwdhashCode(pwdStr,saltRounds=10){
        const salt       = bcrypt.genSaltSync(saltRounds);
        var   pwdhash    = bcrypt.hashSync(pwdStr,saltRounds);
        //console.log(pwdhash);
        return pwdhash;
    }//getPwdhashCode() end

    async isUserLoginIdPresent({mobile_number,email_id})
    {
        try{
            const [results, metadata] = await this.dbcon.query( 
                "SELECT * FROM user_login_info where USER_LOGIN_ID=:MOBILE_NUMBER OR USER_LOGIN_ID=:EMAIL_ID;",
                {   
                    replacements: { 
                        MOBILE_NUMBER   : mobile_number, 
                        EMAIL_ID        : email_id, 
                    },
                    type: Sequelize.QueryTypes.SELECT
                }
            );
            console.log("[isUserLoginIdPresent] Return Result:");
            console.log( results );
            console.log("[isUserLoginIdPresent] Return MetaData:"); 
            console.log( metadata );
            return {status: "success",result: results };
        }catch(error){
            console.log( "[isUserLoginIdPresent] Error happened" );
            //console.log("[signup] Error Return "+ error.message );
            //console.log("[signup] Error Return "+ error.original.sqlMessage );
            //++this.getErrorCode( error.name );
            return { status: "fail",message: error.message,sqlMessage: error.original.sqlMessage };
        }//catch end
    }//++async signup(signupInfo) end

    async signup(signupInfo)
    {
        try{
            const fnProfileID = this.getUniqueId( signupInfo.user_loginid,"Pf");
            const [results_1, metadata_1] = await this.dbcon.query( 
                "INSERT INTO user_basic_info VALUES(:PROFILE_ID,:ISACOMMUNITY,:USER_FIRST_NAME,:USER_LAST_NAME,:USER_EMAIL_ID,:USER_MOBILE_ID,:CREATION_DATE,:CREATION_TIME );",
                {   
                    replacements: { 
                        PROFILE_ID       : fnProfileID, 
                        ISACOMMUNITY     : "0", //++ 1:Community 0:User
                        USER_FIRST_NAME  : signupInfo.user_firstName,
                        USER_LAST_NAME   : signupInfo.user_lastName,
                        USER_EMAIL_ID    : "",
                        USER_MOBILE_ID   : signupInfo.user_loginid,
                        CREATION_DATE    : moment().format('YYYY-MM-DD'),
                        CREATION_TIME    : moment().format('HH:mm:ss')
                    },
                    type: Sequelize.QueryTypes.INSERT
                }
            );
            const [results_2, metadata_2] = await this.dbcon.query( 
                "INSERT INTO USER_LOGIN_INFO VALUES(:PROFILE_ID,:USER_LOGIN_ID,:USER_PWD,:USER_TYPE,:USER_STATUS,:CREATION_DATE,:CREATION_TIME );",
                {   
                    replacements: { 
                        PROFILE_ID    : fnProfileID, 
                        USER_LOGIN_ID : signupInfo.user_loginid,
                        USER_PWD      : this.getPwdhashCode( signupInfo.user_password),
                        USER_TYPE     : signupInfo.user_type,
                        USER_STATUS   : signupInfo.user_status,
                        CREATION_DATE : moment().format('YYYY-MM-DD'),
                        CREATION_TIME : moment().format('HH:mm:ss')
                    },
                    type: Sequelize.QueryTypes.INSERT
                }
            );
            console.log("[signup] Return Result:");
            console.log( results_1 );
            console.log("[signup] Return MetaData:"); 
            console.log( metadata_1 );
            console.log("[signup] Return Result:");
            console.log( results_2 );
            console.log("[signup] Return MetaData:"); 
            console.log( metadata_2 );
            return {status: "success",result_userBasicInfo: metadata_1, result_userLoginId: metadata_2 }; //Success
        }catch(error){
            console.log( "[signup] Error happened" );
            //console.log("[signup] Error Return "+ error.message );
            //console.log("[signup] Error Return "+ error.original.sqlMessage );
            //++this.getErrorCode( error.name );
            return { status: "fail",message: error.message,sqlMessage: error.original.sqlMessage };
        }//catch end
    }//++async signup(signupInfo) end

    async signin(signinInfo)
    {
        try{
            const [results, metadata] = await this.dbcon.query( 
                "SELECT * FROM user_login_info where USER_LOGIN_ID=:USER_LOGIN_ID;",
                {   
                    replacements: { 
                        USER_LOGIN_ID   : signinInfo.user_loginid, 
                    },
                    type: Sequelize.QueryTypes.SELECT
                }
            );
            console.log("[signin] Return Result:");
            console.log( results );
            console.log("[signin] Return MetaData:"); 
            console.log( metadata );
            return {status: "success",result: results };
        }catch(error){
            console.log( "[signin] Error happened" );
            //console.log("[signin] Error Return "+ error.message );
            //console.log("[signin] Error Return "+ error.original.sqlMessage );
            //++this.getErrorCode( error.name );
            return { status: "fail",message: error.message,sqlMessage: error.original.sqlMessage };
        }//catch end
    }//++async signin(signinInfo) end


}//++export default class Database end

