import { Sequelize,QueryTypes } from "sequelize";
import crypto                   from "crypto";
import { v4 as uuidv4 }         from 'uuid';
import { v1 as uuidv1 }         from 'uuid';
import { v5 as uuidv5 }         from 'uuid';
import moment                   from "moment";
import bcrypt                   from "bcrypt";

/*
    ALTER TABLE `user_login_info` ADD CONSTRAINT `USER_STATUS` 
    FOREIGN KEY (`USER_STATUS`) REFERENCES `user_status_hash_list`(`USER_STATUS_KEY`) 
    ON DELETE CASCADE ON UPDATE CASCADE;

    ALTER TABLE `user_basic_info` ADD CONSTRAINT `PROFILE_ID` FOREIGN KEY (`PROFILE_ID`) 
    REFERENCES `user_login_info`(`PROFILE_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

    ALTER TABLE `user_basic_info_indepth` ADD CONSTRAINT `PROFILE_ID_F` FOREIGN KEY (`PROFILE_ID`)
    REFERENCES `user_login_info`(`PROFILE_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

*/

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

    async signup(signupInfo)
    {
        try{
            const [results, metadata] = await this.dbcon.query( 
                "INSERT INTO USER_LOGIN_INFO VALUES(:PROFILE_ID,:USER_LOGIN_ID,:USER_PWD,:USER_TYPE,:USER_STATUS,:CREATION_DATE,:CREATION_TIME );",
                {   
                    replacements: { 
                        PROFILE_ID    : this.getUniqueId( signupInfo.user_loginid,"Pf"), 
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
            console.log("[signup] Return Code:");
            console.log( results );
            console.log("[signup] Return MetaData:"); 
            console.log( metadata );
            return 1; //Success
        }catch(error){
            //console.log( error );
            //console.log("[signup] Error Return "+ error.message );
            //console.log("[signup] Error Return "+ error.original.sqlMessage );
            this.getErrorCode( error.name );
            return 0;
        }//catch end
    }//++async signup(signupInfo) end

}//++export default class Database end

