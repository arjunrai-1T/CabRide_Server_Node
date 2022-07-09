<?php

       //++https://stackoverflow.com/questions/19819407/how-to-encrypt-decrypt-url-parameters-in-javascript
       //++javascript param encrypt:
       //++You can use base64. Javascript has native functions to do that :
       //++alert(btoa("category=textile&user=user1")); // ==> Y2F0ZWdvcnk9dGV4dGlsZSZ1c2VyPXVzZXIx
       //++and to reverse it :
       //++++alert(atob("Y2F0ZWdvcnk9dGV4dGlsZSZ1c2VyPXVzZXIx")); //==> category=textile&user=user1
       //++Be careful to read the doc if you have unicode strings, it's a little different : https://developer.mozilla.org/en-US/docs/Web/API/Window.btoa
       //++Grid Photo Column: https://www.freecodecamp.org/news/how-to-create-an-image-gallery-with-css-grid-e0f0fd666a5c/
       //Example: Order By Two Column
       //If you want to list out data as latest eventdate first, if records of same date exists then data will be sorted by time ie latest time first,,
       //You can try as below
       //select * from my_table order by eventDate DESC, eventHour DESC
       //++FRIEND_REQUEST_PENDING : 0
       //++FRIENDS                : 1
       //++PROFILE_FOLLOWER       : 2
       //++PROFILE_BLOCKED        : 3
             
       require_once  'includePath.php';
	   require_once  'CreateId.php';
	   require_once  'Passwordhash.php';
	   
	   class Middatabase extends GenDBOperation {
	       
                private $GenDBOperationObj= null;
			    private $SQL_List;
			    //++All Image and Video Post
			    public static $POST_TYPE_GENERAL      =  1; 
			    public static $POST_TYPE_BLOG         =  2;
			    public static $POST_TYPE_DISCUSSION   =  3;
			    public static $POST_TYPE_POLL         =  4;
			    
				public static $POST_STATUS_ACTIVE     =  1;
				public static $POST_STATUS_INACTIVE   =  2;
				public static $POST_STATUS_REMOVED    =  0;
				public static $POST_STATUS_BLOCKED    = -1;
				
				public static $POST_PRIVACY_PRIVATE   =  0;  
				public static $POST_PRIVACY_FRIENDS   =  1;
				public static $POST_PRIVACY_SELECTIVE =  2;
				public static $POST_PRIVACY_PUBLIC    =  3;
				
                function __construct(){
				    
				    date_default_timezone_set("Asia/Kolkata");
                    $this->GenDBOperationObj = new GenDBOperation();
					$this->SQL_List=NULL;
					$this->SQL_List= array();
					$this->SQL_List["USERINFO_SQL"]                    ="Select PROFILE_ID,USER_LOGIN_ID,USER_PWD,USER_TYPE,USER_STATUS from USER_LOGIN_INFO";
					$this->SQL_List["USERBASICINFO_SQL"]               ="Select PROFILE_ID,ISACOMMUNITY,USER_FIRST_NAME,USER_LAST_NAME from USER_BASIC_INFO";
					$this->SQL_List["NEW_USER_BASIC_SQL"]              ="INSERT INTO USER_BASIC_INFO VALUES(:PROFILE_ID,:ISACOMMUNITY,:USER_FIRST_NAME,:USER_LAST_NAME,:USER_EMAIL_ID,:USER_MOBILE_ID,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["NEW_USER_BASIC_IN_DEPTH_SQL"]     ="INSERT INTO USER_BASIC_INFO_INDEPTH VALUES(:PROFILE_ID,:PROFILE_DESC,:USER_GENDER,:USER_BIRTHDAY,:USER_MARTIAL_STATUS,:USER_SEXUAL_ORIENTATION,:USER_OCCUPATION,:USER_COUNTRY,:USER_STATE,:USER_PLACE,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["NEW_COMMUNITY_BASIC_IN_DEPTH_SQL"] ="INSERT INTO COMMUNITY_BASIC_INFO_INDEPTH VALUES(:COMMUNITY_PROFILE_ID,:COMMUNITY_STATUS,:COMMUNITY_AUTHOR_ID,:COMMUNITY_NAME,:COMMUNITY_DESCRIPTION,:COMMUNITY_COUNTRY,:COMMUNITY_PLACE,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["NEW_COMMUNITY_CATEGORY_SQL"]       ="INSERT INTO COMMUNITY_CATEGORY_INFO VALUES(:COMMUNITY_PROFILE_ID,:COMMUNITY_CATEGORY_ID,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["NEW_COMMUNITY_ADMIN_ROLES_SQL"]    ="INSERT INTO COMMUNITY_USERS_INFO VALUES(:COMMUNITY_PROFILE_ID,:USER_PROFILE_ID,:USER_ROLES,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["NEW_USER_LOGIN_SQL"]              ="INSERT INTO USER_LOGIN_INFO VALUES(:PROFILE_ID,:USER_LOGIN_ID,:USER_PWD,:USER_TYPE,:USER_STATUS,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["USER_LOGIN_BASIC_INFO_SQL"]       ="SELECT * FROM USER_BASIC_INFO ";
					$this->SQL_List["NEW_USER_SOCIAL_SUMMARY_SQL"]     ="INSERT INTO SOCIAL_RELATIONSHIP_SUM VALUES(:PROFILE_ID,:SUM_FRIEND,:SUM_FOLLOWER,:SUM_FOLLOWING,:SUM_BLOCKED,:SUM_PENDING,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["NEW_USER_ALBUM_SQL"]              ="INSERT INTO ALBUM_INFO VALUES(:ALBUM_ID,:ALBUM_NAME,:ALBUM_AUTHOR_ID,:ALBUM_PRIVACY,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["NEW_FORGOT_PASSWORD_SQL"]         ="INSERT INTO forgot_password VALUES(:USER_LOGIN_ID,:AUTH_KEY,:EXPIRARY_DATE,:EXPIRARY_TIME );";
					$this->SQL_List["GET_FORGOT_PASSWORD_DETAILS_SQL"] ="Select USER_LOGIN_ID,AUTH_KEY,EXPIRARY_DATE,EXPIRARY_TIME from forgot_password";
					$this->SQL_List["NEW_PASSWORD_SETUP_SQL"]          ="Update USER_LOGIN_INFO SET USER_PWD=:USER_PWD";
					$this->SQL_List["FORGOT_PASSWORD_HASH_SQL"] ="SELECT USER_LOGIN_ID,AUTH_KEY,EXPIRARY_DATE,EXPIRARY_TIME FROM forgot_password";
					$this->SQL_List["POST_FEED_SQL"] ="SELECT * FROM POST_BASIC";
					$this->SQL_List["POST_FEED_MEDIA_SQL"] ="SELECT POST_MEDIA.POST_ID ,
					                                                POST_MEDIA.POST_MEDIA_ID,
					                                                POST_MEDIA.POST_MEDIA_TYPE,
					                                                POST_MEDIA.POST_MEDIA_NAME,
					                                                POST_BASIC.POST_PARENT,
					                                                ALBUM_INFO.ALBUM_ID,
					                                                ALBUM_INFO.ALBUM_NAME,
					                                                ALBUM_INFO.ALBUM_AUTHOR_ID
					                                                FROM POST_MEDIA
					                                                INNER JOIN POST_BASIC ON POST_BASIC.POST_ID=POST_MEDIA.POST_ID 
					                                                INNER JOIN ALBUM_INFO ON ALBUM_INFO.ALBUM_ID=POST_MEDIA.ALBUM_ID";
					
					$this->SQL_List["POST_FEED_VIDEO_SQL"] ="SELECT POST_MEDIA.POST_ID ,
					                                                POST_MEDIA.POST_MEDIA_ID,
					                                                POST_MEDIA.POST_MEDIA_TYPE,
					                                                POST_MEDIA.POST_MEDIA_NAME,
					                                                POST_BASIC.POST_PARENT,
					                                                ALBUM_INFO.ALBUM_ID,
					                                                ALBUM_INFO.ALBUM_NAME,
					                                                ALBUM_INFO.ALBUM_AUTHOR_ID
					                                                FROM POST_MEDIA
					                                                INNER JOIN POST_BASIC ON POST_BASIC.POST_ID=POST_MEDIA.POST_ID
					                                                INNER JOIN ALBUM_INFO ON ALBUM_INFO.ALBUM_ID=POST_MEDIA.ALBUM_ID";
					$this->SQL_List["PROFILE_RELATIONSHIP_SQL"] ="SELECT * FROM PROFILE_RELATION";
					$this->SQL_List["PROFILE_RELATIONSHIP_SQL"] ="SELECT * FROM PROFILE_RELATION";
					
					$this->SQL_List["POST_COMMENT_INSERT_SQL"] ="INSERT INTO POST_COMMENT VALUES( :COMMENT_ID,
					                                                                              :PROFILE_ID,
					                                                                              :POST_ID,
					                                                                              :COMMENT_STATUS,
                        			                                                              :COMMENT_PARENT,
                        			                                                              :COMMENT_HAVEANYCHILD,
                        			                                                              :COMMENT_HAVEANYIMAGES,
                        			                                                              :COMMENT_NUMBEROFIMAGES,
                        			                                                              :COMMENT_HAVEANYVIDEOS,
                        			                                                              :COMMENT_NUMBEROFVIDEOS,
					                                                                              :COMMENT_STATEMENT,
					                                                                              :CREATION_DATE,
					                                                                              :CREATION_TIME );";
					                                                                              
					$this->SQL_List["POST_COMMENT_LIKE_DISLIKE_INSERT_SQL"] ="INSERT INTO POST_COMMENT_LIKE_DISLIKE VALUES( :COMMENT_ID,
					                                                                                                        :TOTAL_LIKES,
					                                                                                                        :TOTAL_DISLIKE,
					                                                                                                        :CREATION_DATE,
				                                                                                                            :CREATION_TIME );";
			        $this->SQL_List["POST_COMMENT_SELECT_SQL"] ="SELECT POST_COMMENT.COMMENT_ID,
			                                                            POST_COMMENT.PROFILE_ID,
			                                                            POST_COMMENT.POST_ID,
			                                                            POST_COMMENT.COMMENT_STATUS,
			                                                            POST_COMMENT.COMMENT_PARENT,
			                                                            POST_COMMENT.COMMENT_HAVEANYCHILD,
			                                                            POST_COMMENT.COMMENT_HAVEANYIMAGES,
			                                                            POST_COMMENT.COMMENT_NUMBEROFIMAGES,
			                                                            POST_COMMENT.COMMENT_HAVEANYVIDEOS,
			                                                            POST_COMMENT.COMMENT_NUMBEROFVIDEOS,
			                                                            POST_COMMENT.COMMENT_STATEMENT,
			                                                            USER_BASIC_INFO.USER_FIRST_NAME,
			                                                            USER_BASIC_INFO.USER_LAST_NAME,
			                                                            USER_BASIC_INFO.ISACOMMUNITY,
			                                                            POST_COMMENT.CREATION_DATE,
			                                                            POST_COMMENT.CREATION_TIME
			                                                            FROM POST_COMMENT
			                                                            INNER JOIN USER_BASIC_INFO ON POST_COMMENT.PROFILE_ID=USER_BASIC_INFO.PROFILE_ID";
			                                                            
			        $this->SQL_List["POST_COMMENT_LIKE_DISLIKE_SELECT_SQL"] ="SELECT POST_COMMENT_LIKE_DISLIKE.COMMENT_ID,
			                                                                         POST_COMMENT_LIKE_DISLIKE.TOTAL_LIKES,
			                                                                         POST_COMMENT_LIKE_DISLIKE.TOTAL_DISLIKE,
			                                                                         POST_COMMENT_LIKE_DISLIKE.CREATION_DATE,
			                                                                         POST_COMMENT_LIKE_DISLIKE.CREATION_TIME
			                                                            FROM POST_COMMENT_LIKE_DISLIKE";
			                                                            
		            $this->SQL_List["USER_POST_COMMENT_LIKE_DISLIKE_SELECT_SQL"] ="SELECT USER_GIVEN_POST_COMMENT_LIKE_DISLIKE.PROFILE_ID,
		                                                                                  USER_GIVEN_POST_COMMENT_LIKE_DISLIKE.COMMENT_ID,
			                                                                              USER_GIVEN_POST_COMMENT_LIKE_DISLIKE.LIKES,
			                                                                              USER_GIVEN_POST_COMMENT_LIKE_DISLIKE.DISLIKE,
			                                                                              USER_GIVEN_POST_COMMENT_LIKE_DISLIKE.CREATION_DATE,
			                                                                              USER_GIVEN_POST_COMMENT_LIKE_DISLIKE.CREATION_TIME
			                                                            FROM USER_GIVEN_POST_COMMENT_LIKE_DISLIKE";
			                                                            
			       	$this->SQL_List["POST_LIKEDISLIKE_IN_USER_TABLE_SELECT_SQL"]   ="Select PROFILE_ID,POST_ID,LIKES,DISLIKE,CREATION_DATE,CREATION_TIME FROM USER_GIVEN_LIKE_DISLIKE";
					$this->SQL_List["POST_LIKEDISLIKE_TABLE_SELECT_SQL"]           ="Select POST_ID,TOTAL_LIKES,TOTAL_DISLIKE FROM POST_LIKE_DISLIKE";
					$this->SQL_List["POST_LIKEDISLIKE_IN_USER_TABLE_UPDATE_SQL"]   ="update USER_GIVEN_LIKE_DISLIKE SET LIKES=:LIKES_NEW_VALUE ,DISLIKE=:DISLIKE_NEW_VALUE";
				    $this->SQL_List["POST_LIKEDISLIKE_IN_USER_TABLE_INSERT_SQL"]   ="INSERT INTO USER_GIVEN_LIKE_DISLIKE VALUES(:PROFILE_ID,:POST_ID,:LIKES,:DISLIKE,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["POST_RATING_IN_USER_TABLE_UPDATE_SQL"]   ="update USER_RATING_INDEPTH SET RATING=:RATING_NEW_VALUE ";
					$this->SQL_List["POST_RATING_IN_USER_TABLE_INSERT_SQL"]   ="INSERT INTO USER_RATING_INDEPTH VALUES(:PROFILE_ID,:POST_ID,:RATING,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["POST_RATING_IN_USER_TABLE_SELECT_SQL"]   ="Select PROFILE_ID,POST_ID,RATING,CREATION_DATE,CREATION_TIME FROM USER_RATING_INDEPTH";
					$this->SQL_List["USER_EDUCATION_SQL"]   ="INSERT INTO USER_EDUCATIONAL_INFO VALUES(:PROFILE_ID,:EDUCATION_ID,:INSTITUTE_NAME,:EDUCATION_CATEGORY,:DEGREE,:SUBJECT,:START_DATE,:END_DATE,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["USER_EMPLOYMENT_SQL"]  ="INSERT INTO USER_EMPLOYMENT_INFO VALUES(:PROFILE_ID,:COMPANY_ID,:COMPANY_NAME,:DESIGNATION,:ROLES,:START_DATE,:END_DATE,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["USER_AWARD_SQL"]       ="INSERT INTO USER_AWARD_INFO VALUES(:PROFILE_ID,:AWARD_ID,:AWARD_NAME,:AWARD_TOPIC,:AWARD_DATE,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["USER_FAVOURITE_SQL"]   ="INSERT INTO USER_FAVOURITE_INFO VALUES(:PROFILE_ID,:FAVOURITE_ID,:FAVOURITE_CATEGORY,:FAVOURITE_NAME,:CREATION_DATE,:CREATION_TIME );";
					$this->SQL_List["POST_BASIC_INSERT_SQL"]   ="INSERT INTO POST_BASIC VALUES( :POST_ID,
					                                                                      :POST_TYPE,
					                                                                      :POST_STATUS ,
					                                                                      :POST_PRIVACY,
					                                                                      :POST_AUTHOR,
					                                                                      :POST_TITLE, 	
					                                                                      :POST_TEXT, 
					                                                                      :POST_LOCATION ,	
					                                                                      :POST_PARENT ,	
					                                                                      :POST_HAVEANYCHILD ,	
					                                                                      :POST_ISACOMMUNITYPOST ,
					                                                                      :POST_HAVEANYIMAGES ,	
					                                                                      :POST_NUMBEROFIMAGES, 	
					                                                                      :POST_HAVEANYVIDEOS ,	
					                                                                      :POST_NUMBEROFVIDEOS, 
					                                                                      :CREATION_DATE,:CREATION_TIME );";
					                                                                      
					$this->SQL_List["POST_MEDIA_INSERT_SQL"]   ="INSERT INTO POST_MEDIA VALUES( :POST_ID,
        					                                                                    :POST_MEDIA_ID,
        					                                                                    :POST_MEDIA_TYPE ,
        					                                                                    :POST_MEDIA_NAME,
        					                                                                    :ALBUM_ID,
        					                                                                    :CREATION_DATE,:CREATION_TIME );";
        					                                                                    
        		   	$this->SQL_List["POST_RATING_INSERT_SQL"]   ="INSERT INTO POST_RATING VALUES( :POST_ID,
        					                                                                     :RATING_10,
        					                                                                     :RATING_9,
        					                                                                     :RATING_8,
        					                                                                     :RATING_7,
        					                                                                     :RATING_6,
        					                                                                     :RATING_5,
        					                                                                     :RATING_4,
        					                                                                     :RATING_3,
        					                                                                     :RATING_2,
        					                                                                     :RATING_1,
        					                                                                     :CREATION_DATE,:CREATION_TIME );";
        					                                                                     
					$this->SQL_List["POST_LIKEDISLIKE_INSERT_SQL"]   ="INSERT INTO POST_LIKE_DISLIKE VALUES( :POST_ID,
                    					                                                                     :TOTAL_LIKES,
                    					                                                                     :TOTAL_DISLIKE,
                    					                                                                     :CREATION_DATE,:CREATION_TIME );";
                    					                                                                     
                    $this->SQL_List["POST_GET_ALBUMNAME_SELECT_SQL"]   ="Select ALBUM_ID,ALBUM_NAME,ALBUM_AUTHOR_ID FROM ALBUM_INFO";
                    
                    $this->SQL_List["PROFILE_CURRENT_IMAGE_INSERT_SQL"]   ="INSERT INTO USER_CURRENT_IMAGE VALUES( :PROFILE_ID,
                                                                                                                   :POST_ID,
                    					                                                                           :IMAGE_TYPE,
                    					                                                                           :IMAGE_STATUS,
                    					                                                                           :IMAGE_NAME,
                    					                                                                           :CREATION_DATE,:CREATION_TIME );";
                    					                                                                           
                    $this->SQL_List["PROFILE_CURRENT_IMAGE_SELECT_SQL"]   ="Select PROFILE_ID,POST_ID,IMAGE_TYPE,IMAGE_STATUS,IMAGE_NAME FROM USER_CURRENT_IMAGE";
                     
                    $this->SQL_List["USER_FAVOURITE_LIST_INSERT_SQL"]   ="INSERT INTO USER_FAVOURITE_LIST VALUES( :FAVOURITE_ID,
                					                                                                              :PROFILE_ID,
                					                                                                              :CREATION_DATE,:CREATION_TIME );";
                					                                                                              
                	$this->SQL_List["USER_EDUCATION_INSERT_SQL"]   ="INSERT INTO USER_EDUCATIONAL_INFO VALUES(   :PROFILE_ID,
                        					                                                                     :EDUCATION_ID,
                        					                                                                     :INSTITUTE_NAME,
                        					                                                                     :INSTITUTE_TYPE,
                        					                                                                     :DEGREE_TYPE,
                        					                                                                     :DEGREE,
                        					                                                                     :SUBJECT,
                        					                                                                     :START_DATE,
                        					                                                                     :END_DATE,
                        					                                                                     :EDUCATION_INFO_PRIVACY,
                        					                                                                     :CREATION_DATE,:CREATION_TIME );";
                        					                                                                     
                    $this->SQL_List["USER_EMPLOYMENT_INSERT_SQL"]   ="INSERT INTO USER_EMPLOYMENT_INFO  VALUES(  :PROFILE_ID,
                        					                                                                     :EMPLOYMENT_ID,
                        					                                                                     :COMPANY_NAME,
                        					                                                                     :DESIGNATION,
                        					                                                                     :ROLES,
                        					                                                                     :START_DATE,
                        					                                                                     :END_DATE,
                        					                                                                     :EMPLOYMENT_INFO_PRIVACY,
                        					                                                                     :CREATION_DATE,:CREATION_TIME );";
                    					                                                                           
                    $this->SQL_List["FORGOT_PWD_SQL"]  ="INSERT INTO FORGOT_PASSWORD VALUES(:USER_LOGIN_ID,:PROFILE_ID,:AUTH_KEY,:CREATION_DATE,:CREATION_TIME );";					                                                                           
					
					$this->SQL_List["NEW_FRIEND_REQUEST_SQL"] ="INSERT INTO SOCIAL_RELATIONSHIP_STATUS VALUES(:PROFILE_ID_ONE,:PROFILE_ID_TWO,:ACTION_PROFILE_ID,:RELATIONSHIP_STATUS,:CREATION_DATE,:CREATION_TIME );";
					
					$this->SQL_List["PROFILE_RATING_POST_SELECT_SQL"]   ="Select PROFILE_ID,POST_ID,RATING,CREATION_DATE,CREATION_TIME FROM USER_RATING_INDEPTH";
					
					$this->SQL_List["POST_RATING_DETAILS_SELECT_SQL"]   ="Select POST_ID,RATING_10,
					                                                                             RATING_9,
        					                                                                     RATING_8,
        					                                                                     RATING_7,
        					                                                                     RATING_6,
        					                                                                     RATING_5,
        					                                                                     RATING_4,
        					                                                                     RATING_3,
        					                                                                     RATING_2,
        					                                                                     RATING_1,
        					                                                                     CREATION_DATE,CREATION_TIME FROM POST_RATING";
					
					$this->SQL_List["PROFILE_LIKEDISLIKE_POST_SELECT_SQL"]   ="Select PROFILE_ID,POST_ID,LIKES,DISLIKE,CREATION_DATE,CREATION_TIME FROM USER_GIVEN_LIKE_DISLIKE";
					
					$this->SQL_List["WEBRTC_BASIC_INSERT_SQL"]   ="INSERT INTO WEBRTC_INFO VALUES( :WEBRTC_EVENT_ID,
					                                                                               :SENDER_PROFILE_ID,
					                                                                               :RECEIVER_PROFILE_ID,
					                                                                               :WEBRTC_EVENT ,
					                                                                               :WEBRTC_DATA,
					                                                                               :CREATION_DATE,
					                                                                               :CREATION_TIME );";
					
				}//++function __construct() end
               
                function __destruct(){
				  $this->GenDBOperationObj= NULL;
				  $this->SQL_List = NULL;
                }//++function __destruct() end

                public function connectDB(){
                 
                    if( null!= $this->GenDBOperationObj ){
            		    
            		    if( 1 == $this->GenDBOperationObj->GenDBOperationInit("/home/itaelbly/rigtroll.com/php/Middleware/database.cfg.xml")  ){
            		        
            		        if( 1 == $this->GenDBOperationObj->GenDBConectOperation() ){
            		            Middatabase::loghandler("[Middatabase] [connectDB()] Database connect success");
            		            return 1;
            		        }else {
            		            Middatabase::loghandler("[Middatabase] [connectDB()] Database connect failed");
            		            $this->GenDBOperationObj= null;
            		            return 0;
            		        }
            		        
            		    } else{
            		        Middatabase::loghandler("[Middatabase] [connectDB()] Database connect failed");
            		        $this->GenDBOperationObj = null;
            		        return 0;
            		    }//else end
            		    
                    } else {
                        Middatabase::loghandler("[Middatabase] [connectDB()] Database connect failed due to no active GenDBOperationObj");
                        $this->GenDBOperationObj = null;
                        return 0;
                    }//else end
                    
                }//++function connectDB() end
          
			    public function disconnectDB(){
                    $this->GenDBOperationObj->GenDBDisconectOperation();
                    Middatabase::loghandler("[Middatabase] [disconnectDB()] Database disconnect success");
                }//++function disconnectDB() end
                
                public function beginTransaction(){
			       $this->GenDBOperationObj->beginTransaction();
    		    }//++public function beginTransaction()
    			
    		    public function commitTransaction(){
    			    $this->GenDBOperationObj->commitTransaction();
    		    }//++public function commitTransaction()
    			
    		    public function rollBackTransaction(){
    			    $this->GenDBOperationObj->rollBackTransaction();
    		    }//++public function rollBackTransaction()
                
			    public function getLoginInfo($fnUserName){
						   if( NULL == $this->GenDBOperationObj ){
							   Middatabase::loghandler("[Middatabase] [getLoginInfo()] Valid Database Connection Not found");
							   return 0;
						   }//++if end
						   Middatabase::loghandler("[Middatabase] [getLoginInfo()] Valid Database Connection found");
						   $fnSql = $this->SQL_List["USERINFO_SQL"];
						   //++Add Some where condition this checking code will be added with where cluase
						   $fnSqlConditionArray= array();
		                   $fnSqlConditionArray["USER_LOGIN_INFO.USER_LOGIN_ID"]    = $fnUserName;
						   $fnSqlConditionArray["USER_LOGIN_INFO.USER_LOGIN_ID_OP"] ="=";
						   return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray); 
			   }//++public function getLoginInfo() end
			   
			   public function getUserDetailInfo($fnProfileId){
				           if( NULL == $this->GenDBOperationObj ){
							   Middatabase::loghandler("[Middatabase] [getUserDetailInfo()] Valid Database Connection Not found");
							   return 0;
						   }//++if end
						   Middatabase::loghandler("[Middatabase] [getUserDetailInfo()] Valid Database Connection found");
						   $sqlCond=null;
        				   $fnSqlConditionArray = null;
        				   $fnSqlOrderByArray   = null;
        				   $fnSql = NULL;
        				   $fnSql = 'SELECT  USER_BASIC_INFO.PROFILE_ID,
                                             USER_BASIC_INFO.USER_FIRST_NAME,
                                             USER_BASIC_INFO.USER_LAST_NAME,
                                             USER_BASIC_INFO.ISACOMMUNITY,
                                             USER_BASIC_INFO_INDEPTH.USER_GENDER
                                             FROM  USER_BASIC_INFO
                                             INNER JOIN USER_BASIC_INFO_INDEPTH ON USER_BASIC_INFO_INDEPTH.PROFILE_ID=USER_BASIC_INFO.PROFILE_ID
                                             WHERE USER_BASIC_INFO.PROFILE_ID="'.$fnProfileId.'"';
    					  $fnSqlConditionType="OR";
    					  return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
						   
			   }//++public function getUserDetailInfo() end
			   
			   public function IsUserACommunity($fnProfileId){
				           
				           if( NULL == $this->GenDBOperationObj ){
							   Middatabase::loghandler("[Middatabase] [IsUserACommunity()] Valid Database Connection Not found");
							   return 0;
						   }//++if end
						   
						   Middatabase::loghandler("[Middatabase] [IsUserACommunity()] Valid Database Connection found");
						   $sqlCond=null;
        				   $fnSqlConditionArray = null;
        				   $fnSqlOrderByArray   = null;
        				   $fnSql = NULL;
        				   $fnSql = 'SELECT  USER_BASIC_INFO.PROFILE_ID,
                                             USER_BASIC_INFO.ISACOMMUNITY
                                             FROM  USER_BASIC_INFO
                                             WHERE USER_BASIC_INFO.PROFILE_ID="'.$fnProfileId.'"';
    					  $fnSqlConditionType="OR";
    					  return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
						   
			   }//++public function IsUserACommunity() end
			   
			   public function getCommunityDetailInfo($fnProfileId){
				           if( NULL == $this->GenDBOperationObj ){
							   Middatabase::loghandler("[Middatabase] [getCommunityDetailInfo()] Valid Database Connection Not found");
							   return 0;
						   }//++if end
						   Middatabase::loghandler("[Middatabase] [getCommunityDetailInfo()] Valid Database Connection found");
						   $sqlCond=null;
        				   $fnSqlConditionArray = null;
        				   $fnSqlOrderByArray   = null;
        				   $fnSql = NULL;
        				   $fnSql = 'SELECT  COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PROFILE_ID,
                                             COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_STATUS,
                                             COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_AUTHOR_ID,
                                             COMMUNITY_CATEGORY_INFO.COMMUNITY_CATEGORY_ID,
                                             CATEGORIES.CATEGORY_NAME,
                                             COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_NAME,
                                             COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_DESCRIPTION,
                                             COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_COUNTRY,
                                             COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PLACE,
                                             COMMUNITY_BASIC_INFO_INDEPTH.CREATION_DATE
                                             FROM  COMMUNITY_BASIC_INFO_INDEPTH
                                             INNER JOIN USER_BASIC_INFO         ON USER_BASIC_INFO.PROFILE_ID = COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PROFILE_ID
                                             INNER JOIN COMMUNITY_CATEGORY_INFO ON COMMUNITY_CATEGORY_INFO.COMMUNITY_PROFILE_ID = COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PROFILE_ID
                                             INNER JOIN CATEGORIES              ON CATEGORIES.CATEGORY_ID = COMMUNITY_CATEGORY_INFO.COMMUNITY_CATEGORY_ID
                                             WHERE COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PROFILE_ID="'.$fnProfileId.'"';
    					  $fnSqlConditionType="OR";
    					  return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
						   
			   }//++public function getCommunityDetailInfo() end
			   
			   public function getUserDetailInfoByLoginId($fnUserLoginId){
				           if( NULL == $this->GenDBOperationObj ){
							   Middatabase::loghandler("[Middatabase] [getUserDetailInfoByLoginId()] Valid Database Connection Not found");
							   return 0;
						   }//++if end
						   Middatabase::loghandler("[Middatabase] [getUserDetailInfoByLoginId()] Valid Database Connection found");
						   $sqlCond=null;
        				   $fnSqlConditionArray = null;
        				   $fnSqlOrderByArray   = null;
        				   $fnSql = NULL;
        				   $fnSql = 'SELECT  USER_BASIC_INFO.PROFILE_ID,
                                             USER_BASIC_INFO.USER_FIRST_NAME,
                                             USER_BASIC_INFO.USER_LAST_NAME
                                             FROM  USER_BASIC_INFO
                                             INNER JOIN USER_LOGIN_INFO ON USER_LOGIN_INFO.PROFILE_ID=USER_BASIC_INFO.PROFILE_ID
                                             WHERE USER_BASIC_INFO.USER_EMAIL_ID="'.$fnUserLoginId.'" OR USER_BASIC_INFO.USER_MOBILE_ID="'.$fnUserLoginId.'"';
    					  $fnSqlConditionType="OR";
    					  return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
						   
			   }//++public function getUserDetailInfoByLoginId() end
			   
			   public function getLoginBasicInfo($fnUserName){
				           
				if( NULL == $this->GenDBOperationObj ){
					Middatabase::loghandler("[Middatabase] [getLoginInfo()] Valid Database Connection Not found");
					return 0;
				}//++if end
				Middatabase::loghandler("[Middatabase] [getLoginInfo()] Valid Database Connection  found");
				$fnSql = $this->SQL_List["USER_LOGIN_BASIC_INFO_SQL"];
				//++Add Some where condition this checking code will be added with where cluase
				$fnSqlConditionArray= array();
				$fnSqlConditionArray["user_basic_info.USER_EMAIL_ID"]     = $fnUserName;
				$fnSqlConditionArray["user_basic_info.USER_EMAIL_ID_OP"]  ="=";
				$fnSqlConditionArray["user_basic_info.USER_MOBILE_ID"]    = $fnUserName;
				$fnSqlConditionArray["user_basic_info.USER_MOBILE_ID_OP"] ="=";
				$fnSqlConditionType ="OR";
				return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType); 
				
	           }//++public function getLoginBasicInfo() end

			   public function setNewLoginInfo($fnRegisterDataArray){
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setNewLoginInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode1 =0;
					$fnRtCode2 =0;
					//++Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_USER_BASIC_SQL"];
					$fnSqlParamArray = NULL;
					$str = $fnRegisterDataArray["USER_FIRST_NAME"].$fnRegisterDataArray["USER_LAST_NAME"].$fnSqlParamArray["USER_LOGIN_ID"].date("Y-m-d").date("H:i:s");
					$fnProfileId = "PF".CreateId::getIDType1(6,$str);
					$fnSqlParamArray= array();
					$fnSqlParamArray["PROFILE_ID"]       = $fnProfileId;
					$fnSqlParamArray["ISACOMMUNITY"]     = "0"; //++ 1:Community 0:User
					$fnSqlParamArray["USER_FIRST_NAME"]  = $fnRegisterDataArray["USER_FIRST_NAME"];
					$fnSqlParamArray["USER_LAST_NAME"]   = $fnRegisterDataArray["USER_LAST_NAME"];
					$fnSqlParamArray["USER_EMAIL_ID"]    = $fnRegisterDataArray["USER_EMAIL_ID"];
					$fnSqlParamArray["USER_MOBILE_ID"]   = $fnRegisterDataArray["USER_MOBILE_ID"];
					$fnSqlParamArray["CREATION_DATE"]    = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]    = date("H:i:s");
					$fnRtCode1 = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					//++Step2: Add User Login Info
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_USER_LOGIN_SQL"];
					$fnSqlParamArray = NULL;
					$fnSqlParamArray= array();
				    $fnSqlParamArray["PROFILE_ID"]     = $fnProfileId;
					$fnSqlParamArray["USER_LOGIN_ID"]  = $fnRegisterDataArray["USER_LOGIN_ID"];
					$fnSqlParamArray["USER_PWD"]       = $fnRegisterDataArray["USER_PWD"];
					//++User Type: Admin/Normal/Community/Tech Support User
					$fnSqlParamArray["USER_TYPE"]      = $fnRegisterDataArray["USER_TYPE"];
					$fnSqlParamArray["USER_STATUS"]    = "NEWUSER"; //++NewUser
					$fnSqlParamArray["CREATION_DATE"]  = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]  = date("H:i:s");
					$fnRtCode2 = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
                    if( ( 1 == $fnRtCode1 ) && ( 1 == $fnRtCode1 ) ){
						Middatabase::loghandler("[Middatabase] [setNewLoginInfo()] Successfully Created New User");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setNewLoginInfo()] Unable to create New User");
						return 0;
					}//++else end
			   }//++public function setNewLoginInfo() end
			   
			   public function setNewLoginAlbumInfo($fnRegisterAlbumArray){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setNewLoginInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode =0;
					//++Step: Add User Album Info
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_USER_ALBUM_SQL"];
					$fnSqlParamArray = NULL;
					$str        = $fnRegisterAlbumArray["PROFILE_ID"].$fnRegisterAlbumArray["USER_FIRST_NAME"].$fnRegisterAlbumArray["USER_LAST_NAME"].$fnRegisterAlbumArray["ALBUM_NAME"].$fnRegisterAlbumArray["ALBUM_PRIVACY"].date("Y-m-d").date("H:i:s");
					$fnAlbumId  = "AL".CreateId::getIDType1(6,$str);
					$fnSqlParamArray= array();
					$fnSqlParamArray["ALBUM_ID"]          = $fnAlbumId;
				    $fnSqlParamArray["ALBUM_NAME"]        = $fnRegisterAlbumArray["ALBUM_NAME"];
					$fnSqlParamArray["ALBUM_AUTHOR_ID"]   = $fnRegisterAlbumArray["PROFILE_ID"];
					$fnSqlParamArray["ALBUM_PRIVACY"]     = $fnRegisterAlbumArray["ALBUM_PRIVACY"];
					$fnSqlParamArray["CREATION_DATE"]     = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]     = date("H:i:s");
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					if(  1 == $fnRtCode ){
						Middatabase::loghandler("[Middatabase] [setNewLoginAlbumInfo()] Successfully Created New User Album");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setNewLoginAlbumInfo()] Unable to create New User Album");
						return 0;
					}//++else end
					
			   }//++public function setNewLoginAlbumInfo() end
			   
			   public function setUserInDepthInfo( $fnProfileID, $fnRegisterDataArray ){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setUserInDepthInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
				    
					//Step2: Add User In Depth Info
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_USER_BASIC_IN_DEPTH_SQL"];
					//$fnSql = "INSERT INTO USER_BASIC_INFO_INDEPTH VALUES(:PROFILE_ID,:PROFILE_DESC,:USER_GENDER,:USER_BIRTHDAY,:USER_MARTIAL_STATUS,:USER_SEXUAL_ORIENTATION,:USER_OCCUPATION,:USER_COUNTRY,:USER_STATE,:USER_PLACE,:CREATION_DATE,:CREATION_TIME );";
					$fnSqlParamArray = NULL;
					$fnSqlParamArray= array();
				    $fnSqlParamArray["PROFILE_ID"]                = $fnProfileID;
				    $fnSqlParamArray["PROFILE_DESC"]              = $fnRegisterDataArray["PROFILE_DESC"];
					$fnSqlParamArray["USER_GENDER"]               = $fnRegisterDataArray["USER_GENDER"];
					$fnSqlParamArray["USER_BIRTHDAY"]             = $fnRegisterDataArray["USER_BIRTHDAY"];
					$fnSqlParamArray["USER_OCCUPATION"]           = $fnRegisterDataArray["USER_OCCUPATION"];
					$fnSqlParamArray["USER_MARTIAL_STATUS"]       = $fnRegisterDataArray["USER_MARTIAL_STATUS"];
					$fnSqlParamArray["USER_SEXUAL_ORIENTATION"]   = $fnRegisterDataArray["USER_SEXUAL_ORIENTATION"];
					$fnSqlParamArray["USER_COUNTRY"]              = $fnRegisterDataArray["USER_COUNTRY"];
					$fnSqlParamArray["USER_STATE"]                = $fnRegisterDataArray["USER_STATE"];
					$fnSqlParamArray["USER_PLACE"]                = $fnRegisterDataArray["USER_PLACE"];
				    $fnSqlParamArray["CREATION_DATE"]             = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]             = date("H:i:s");
					$fnRtCode = 0;
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
                    if(  1 == $fnRtCode ){
						Middatabase::loghandler("[Middatabase] [setUserInDepthInfo()] Successfully Created User In Dept information");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setUserInDepthInfo()] Unable to create User In Dept information");
						return 0;
					}//else end
					
			   }//++public function setUserInDepthInfo() end
			   
			   //++Get Album ID for Post media creation
			   public function getUserInDepthInfo($fnProfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getUserInDepthInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getUserInDepthInfo()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
					if( NULL != $fnProfileID ){
						$sqlCond =" USER_BASIC_INFO_INDEPTH.PROFILE_ID='".$fnProfileID."';";
					}//if end
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = "SELECT * FROM USER_BASIC_INFO_INDEPTH";
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getUserInDepthInfo() end
			   
			   public function updateUserInDepthInfo($fnProfileId,$fnUserInDepthInfoArray){ 
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateUserInDepthInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [updateUserInDepthInfo()] Valid Profile Id not found");
						return 0;
					}//++if end
					
					if( NULL == $fnUserInDepthInfoArray ){
						Middatabase::loghandler("[Middatabase] [updateUserInDepthInfo()] Valid Employment Id not found");
						return 0;
					}//++if end
					
					//++Step1: Update User Basic in Depth Info
					$fnRtCode =0;
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO_INDEPTH SET";
					$firstCondition = false;
					
					if( TRUE == array_key_exists("PROFILE_DESC",$fnUserInDepthInfoArray) ){
					    $fnSql = $fnSql."   USER_BASIC_INFO_INDEPTH.PROFILE_DESC='".$fnUserInDepthInfoArray["PROFILE_DESC"]."'";
					    $firstCondition=true;
					}//++if end
					
					if( TRUE == array_key_exists("USER_GENDER",$fnUserInDepthInfoArray) ){
					    if( true == $firstCondition){
					         $fnSql = $fnSql.",";
					    }//if end
					    $fnSql = $fnSql."  USER_BASIC_INFO_INDEPTH.USER_GENDER='".$fnUserInDepthInfoArray["USER_GENDER"]."'";
					}//++if end
					
				    if( TRUE == array_key_exists("USER_BIRTHDAY",$fnUserInDepthInfoArray) ){
				        if( true == $firstCondition){
					         $fnSql = $fnSql.",";
					    }//if end
					    $fnSql = $fnSql."  USER_BASIC_INFO_INDEPTH.USER_BIRTHDAY='".$fnUserInDepthInfoArray["USER_BIRTHDAY"]."'";
					}//++if end
					
					if( TRUE == array_key_exists("USER_MARTIAL_STATUS",$fnUserInDepthInfoArray) ){
					    if( true == $firstCondition){
					         $fnSql = $fnSql.",";
					    }//if end
					    $fnSql = $fnSql." USER_BASIC_INFO_INDEPTH.USER_MARTIAL_STATUS='".$fnUserInDepthInfoArray["USER_MARTIAL_STATUS"]."'";
					}//++if end
					
					if( TRUE == array_key_exists("USER_SEXUAL_ORIENTATION",$fnUserInDepthInfoArray) ){
					    if( true == $firstCondition){
					         $fnSql = $fnSql.",";
					    }//if end
					    $fnSql = $fnSql."  USER_BASIC_INFO_INDEPTH.USER_SEXUAL_ORIENTATION='".$fnUserInDepthInfoArray["USER_SEXUAL_ORIENTATION"]."'";
					}//++if end
					
					if( TRUE == array_key_exists("USER_COUNTRY",$fnUserInDepthInfoArray) ){
					    if( true == $firstCondition){
					         $fnSql = $fnSql.",";
					    }//if end
					    $fnSql = $fnSql." USER_BASIC_INFO_INDEPTH.USER_COUNTRY='".$fnUserInDepthInfoArray["USER_COUNTRY"]."'";
					}//++if end
					
					if( TRUE == array_key_exists("USER_STATE",$fnUserInDepthInfoArray) ){
					    if( true == $firstCondition){
					         $fnSql = $fnSql.",";
					    }//if end
					    $fnSql = $fnSql." USER_BASIC_INFO_INDEPTH.USER_STATE='".$fnUserInDepthInfoArray["USER_STATE"]."'";
					}//++if end
					
					if( TRUE == array_key_exists("USER_PLACE",$fnUserInDepthInfoArray) ){
					    if( true == $firstCondition){
					         $fnSql = $fnSql.",";
					    }//if end
					    $fnSql = $fnSql." USER_BASIC_INFO_INDEPTH.USER_PLACE='".$fnUserInDepthInfoArray["USER_PLACE"]."'";
					}//++if end
					
					if( TRUE == array_key_exists("USER_OCCUPATION",$fnUserInDepthInfoArray) ){
					    if( true == $firstCondition){
					         $fnSql = $fnSql.",";
					    }//if end
					    $fnSql = $fnSql." USER_BASIC_INFO_INDEPTH.USER_OCCUPATION='".$fnUserInDepthInfoArray["USER_OCCUPATION"]."'";
					}//++if end
					
					$fnSql = $fnSql."  WHERE USER_BASIC_INFO_INDEPTH.PROFILE_ID='".$fnProfileId."'";
					
					Middatabase::loghandler("[Middatabase] [updateUserInDepthInfo()] SQL: ".$fnSql );
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateUserInDepthInfo()] Successfully updated user in depth info");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateUserInDepthInfo()] Unable to update user in depth info");
						return 0;
					}//++else end
					
			   }//++public function updateUserInDepthInfo() end
			   
			   public function setUserActivate($fnProfileId){ 
			        if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setUserActivate()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [setUserActivate()] Valid Profile Id not found");
						return 0;
					}//++if end
					//++Step1: Update User Basic in Depth Info
					$fnRtCode =0;
					$fnSql = NULL;
					$fnSql = "UPDATE USER_LOGIN_INFO SET";
					$fnSql = $fnSql."   USER_LOGIN_INFO.USER_STATUS ='ACTIVE'";
					$fnSql = $fnSql."   WHERE USER_LOGIN_INFO.PROFILE_ID='".$fnProfileId."'";
					Middatabase::loghandler("[Middatabase] [updateUserInDepthInfo()] SQL: ".$fnSql );
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setUserActivate()] Successfully updated user activate info");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setUserActivate()] Unable to update user activate info");
						return 0;
					}//++else end
			   }//++public function setUserActivate($fnProfileId) end
			   
			   public function setUserSocialListSummary($fnProfileId){ 
			        if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setUserSocialListSummary()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [setUserSocialListSummary()] Valid Profile Id not found");
						return 0;
					}//++if end
					//++Step1: Update User Basic in Depth Info
					$fnRtCode =0;
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_USER_SOCIAL_SUMMARY_SQL"];
					$fnSqlParamArray= array();
					$fnSqlParamArray["PROFILE_ID"]       = $fnProfileId;
					$fnSqlParamArray["SUM_FRIEND"]       = "0"; //++ 1:Community 0:User
					$fnSqlParamArray["SUM_FOLLOWER"]     = "0";
					$fnSqlParamArray["SUM_FOLLOWING"]    = "0";
					$fnSqlParamArray["SUM_BLOCKED"]      = "0";
					$fnSqlParamArray["SUM_PENDING"]      = "0";
					$fnSqlParamArray["CREATION_DATE"]    = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]    = date("H:i:s");
				    $fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setUserSocialListSummary()] Successfully created new user social list summary info");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setUserSocialListSummary()] Unable to create new user social list summary info");
						return 0;
					}//++else end
			   }//++public function setUserSocialListSummary($fnProfileId) end
			   
			   public function getGeneralSingleAndParentPostFeedInfo($fnStartDate,$fnEndDate=NULL,$fnPostAuthorList=NULL,$fnPostType,$fnPostPrivacyList=NULL,$fnPostMaxResult=10,$fnPostOffSet=0,$fnSinglePostId=NULL){
				    
				    Middatabase::loghandler("[getGeneralSingleAndParentPostFeedInfo()] Post Type: ".$fnPostType );
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getGeneralSingleAndParentPostFeedInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnStartDate ){
						Middatabase::loghandler("[Middatabase] [getGeneralSingleAndParentPostFeedInfo()] Valid Start Date not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
					
					if( NULL == $fnEndDate ){
						$sqlCond ="POST_BASIC.CREATION_DATE='".$fnStartDate."'";
					}else if( " " != $fnEndDate ){
					    $sqlCond ="POST_BASIC.CREATION_DATE>='".$fnStartDate."' and  POST_BASIC.CREATION_DATE <='".$fnEndDate."'";
					}else if( " " == $fnEndDate ){
					    $sqlCond ="POST_BASIC.CREATION_DATE<='".$fnStartDate."'";
					}//++else end
					$fnSql = NULL;
					$fnSql = "SELECT POST_BASIC.POST_ID,
					                 POST_BASIC.POST_TYPE,
					                 POST_BASIC.POST_STATUS,
					                 POST_BASIC.POST_PRIVACY,
					                 POST_BASIC.POST_AUTHOR,
					                 POST_BASIC.POST_TITLE,
					                 POST_BASIC.POST_TEXT,
					                 POST_BASIC.POST_LOCATION,
					                 POST_BASIC.POST_PARENT,
					                 POST_BASIC.POST_HAVEANYCHILD,
					                 POST_BASIC.POST_ISACOMMUNITYPOST,
					                 POST_BASIC.POST_HAVEANYIMAGES,
					                 POST_BASIC.POST_NUMBEROFIMAGES,
					                 POST_BASIC.POST_HAVEANYVIDEOS,
					                 POST_BASIC.POST_NUMBEROFVIDEOS,
					                 POST_LIKE_DISLIKE.TOTAL_LIKES,
					                 POST_LIKE_DISLIKE.TOTAL_DISLIKE,
					                 POST_RATING.RATING_10,
					                 POST_RATING.RATING_9,
					                 POST_RATING.RATING_8,
					                 POST_RATING.RATING_7,
					                 POST_RATING.RATING_6,
					                 POST_RATING.RATING_5,
					                 POST_RATING.RATING_4,
					                 POST_RATING.RATING_3,
					                 POST_RATING.RATING_2,
					                 POST_RATING.RATING_1,
					                 POST_BASIC.CREATION_DATE,
					                 POST_BASIC.CREATION_TIME
					                 FROM POST_BASIC
					                 INNER JOIN POST_LIKE_DISLIKE ON POST_LIKE_DISLIKE.POST_ID = POST_BASIC.POST_ID
					                 INNER JOIN POST_RATING       ON POST_RATING.POST_ID       = POST_BASIC.POST_ID";
					
					if( NULL!= $fnPostAuthorList){
					    $sqlCond = $sqlCond.' AND POST_BASIC.POST_AUTHOR IN ('.$fnPostAuthorList.')';
					}else{
					    $sqlCond = $sqlCond.' AND POST_BASIC.POST_AUTHOR IN ("")';
					}//++else end
					
					$sqlCond = $sqlCond." AND POST_BASIC.POST_TYPE='".$fnPostType."'";
					
					if( NULL!= $fnPostPrivacyList){
					    $sqlCond = $sqlCond.' AND POST_BASIC.POST_PRIVACY IN ('.$fnPostPrivacyList.')';
					}//++if end
					
					if(NULL!= $fnSinglePostId ){
					    $sqlCond = $sqlCond." AND ( POST_BASIC.POST_ID='".$fnSinglePostId."' OR POST_BASIC.POST_PARENT='".$fnSinglePostId."' )";
					}//++if end
					
					$sqlCond = $sqlCond.' AND POST_BASIC.POST_STATUS IN ("POST_STATUS_ACTIVE")';
					
					$fnSqlConditionArray  = null;
					$fnSqlOrderByArray    = null;
					$fnSql = $fnSql." where ".$sqlCond." order by  CREATION_DATE DESC,CREATION_TIME DESC LIMIT ".$fnPostMaxResult." OFFSET ".$fnPostOffSet.";" ;
					
					Middatabase::loghandler("[Middatabase] [getGeneralSingleAndParentPostFeedInfo()] SQL: ".$fnSql );
					$fnSqlConditionType="AND";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getGeneralSingleAndParentPostFeedInfo() end
			    
			   public function getPostFeedMediaInfo($fnStartDate,$fnEndDate=NULL,$fnPostMediaIdList=NULL,$fnPostType){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getPostFeedMediaInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnStartDate ){
						Middatabase::loghandler("[Middatabase] [getPostFeedMediaInfo()] Valid Start Date not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
					$sqlCond1 = NULL;
					if( NULL == $fnEndDate ){
						$sqlCond  ="POST_MEDIA.CREATION_DATE='".$fnStartDate."'";
						$sqlCond1 ="POST_BASIC.CREATION_DATE='".$fnStartDate."'";
					}else if( " " != $fnEndDate ){
					    $sqlCond  ="POST_MEDIA.CREATION_DATE>='".$fnStartDate."' and  POST_MEDIA.CREATION_DATE <='".$fnEndDate."'";
					    $sqlCond1 ="POST_BASIC.CREATION_DATE>='".$fnStartDate."' and  POST_BASIC.CREATION_DATE <='".$fnEndDate."'";
					}else if( " " == $fnEndDate ){
					    $sqlCond  ="POST_MEDIA.CREATION_DATE<='".$fnStartDate."'";
					}//++else if end
					
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = array();
					$fnSqlOrderByArray[0]= "POST_MEDIA.CREATION_TIME";
					$fnSqlOrderByArray[1]= "desc";
					$fnSql = NULL;
					$fnSql = $this->SQL_List["POST_FEED_MEDIA_SQL"];
					if( NULL != $fnPostMediaIdList){
                        $sqlCond = $sqlCond." AND POST_MEDIA.POST_ID IN (".$fnPostMediaIdList.") ";
					}//else end
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="AND";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			    }//++public function getPostFeedMediaInfo() end
			   
			   /*
			   public function getPostFeedVideoInfo($fnStartDate,$fnEndDate=NULL,$fnPostAuthorList=NULL,$fnPostType){
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getPostFeedVideoInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnStartDate ){
						Middatabase::loghandler("[Middatabase] [getPostFeedVideoInfo()] Valid First Date not found");
						return 0;
					}//++if end
					$sqlCond=null;
					$sqlCond1 = NULL;
					if( NULL == $fnEndDate ){
						$sqlCond ="POST_MEDIA.CREATION_DATE='".$fnStartDate."'";
						$sqlCond1 ="POST_BASIC.CREATION_DATE='".$fnStartDate."'";
					}else{
					    $sqlCond ="POST_MEDIA.CREATION_DATE>='".$fnStartDate."' and  POST_MEDIA.CREATION_DATE <='".$fnEndDate."'";
					    $sqlCond1 ="POST_BASIC.CREATION_DATE>='".$fnStartDate."' and  POST_BASIC.CREATION_DATE <='".$fnEndDate."'";
					}//else end
					$fnSqlConditionArray= null;
					$fnSqlOrderByArray = array();
					$fnSqlOrderByArray[0]="POST_MEDIA.CREATION_TIME";
					$fnSqlOrderByArray[1]="desc";
					$fnSql = NULL;
					$fnSql = $this->SQL_List["POST_FEED_VIDEO_SQL"];
					if( null == $fnPostAuthorList ){
					    $sqlCond = $sqlCond." AND POST_MEDIA.POST_ID IN ( SELECT POST_ID FROM POST_BASIC WHERE POST_BASIC.POST_NUMBEROFVIDEOS=1 AND ".$sqlCond1." AND POST_BASIC.POST_TYPE='".$fnPostType."' AND POST_MEDIA.POST_MEDIA_TYPE LIKE 'video/%')";
					}else{
					    $sqlCond = $sqlCond." AND POST_MEDIA.POST_ID IN ( SELECT POST_ID FROM POST_BASIC WHERE POST_BASIC.POST_NUMBEROFVIDEOS=1 AND ".$sqlCond1." AND POST_BASIC.POST_AUTHOR IN (".$fnPostAuthorList.") AND POST_BASIC.POST_TYPE='".$fnPostType."' AND POST_MEDIA.POST_MEDIA_TYPE LIKE 'video/%' )";
					}//else end
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="AND";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			   }//++public function getPostFeedVideoInfo() end
			   
			   public function getProfileRelativeList($fnPrfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getProfileRelativeList()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnPrfileID ){
						Middatabase::loghandler("[Middatabase] [getProfileRelativeList()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
					$sqlCond1 = NULL;
					if( NULL != $fnPrfileID ){
						$sqlCond =" ( PROFILE_RELATION.PROFILE_ID_1='".$fnPrfileID."' OR PROFILE_RELATION.PROFILE_ID_2='".$fnPrfileID."') AND (PROFILE_RELATION.RELEATIONSHIP=1 OR PROFILE_RELATION.RELEATIONSHIP=2) ";
					}//if end
					$fnSqlConditionArray= null;
					$fnSqlOrderByArray  = null;
					$fnSql = NULL;
					$fnSql = $this->SQL_List["PROFILE_RELATIONSHIP_SQL"];
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getProfileRelativeList() end
			   */
			   
			   public function setForgotPwdOtpInfo($fnLoginID,$fnProfileID,$fnAuthKey){
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setForgotPwdOtpInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode =0;
					//++Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = $this->SQL_List["FORGOT_PWD_SQL"];
					$fnSqlParamArray = NULL;
					$fnSqlParamArray= array();
					$fnSqlParamArray["USER_LOGIN_ID"]    = $fnLoginID;
					$fnSqlParamArray["PROFILE_ID"]       = $fnProfileID; 
					$fnSqlParamArray["AUTH_KEY"]         = $fnAuthKey;
					$fnSqlParamArray["CREATION_DATE"]    = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]    = date("H:i:s");
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					if(  1 == $fnRtCode ){
						Middatabase::loghandler("[Middatabase] [setForgotPwdOtpInfo()] Successfully Created Forgot User PWD Entry");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setForgotPwdOtpInfo()] Unable to create Forgot User PWD Entry");
						return 0;
					}//++else end
			   }//++public function setForgotPwdOtpInfo() end
			   
			   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			   
			   public function setNewFriendRequestInfo($fnProfileID1,$fnProfileID2,$fnActionProfileID){
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setNewFriendRequestInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode =0;
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_FRIEND_REQUEST_SQL"];
					$fnSqlParamArray = NULL;
					$fnSqlParamArray= array();
					$fnSqlParamArray["PROFILE_ID_ONE"]      = $fnProfileID1;
					$fnSqlParamArray["PROFILE_ID_TWO"]      = $fnProfileID2; 
					$fnSqlParamArray["ACTION_PROFILE_ID"]   = $fnActionProfileID;
					$fnSqlParamArray["RELATIONSHIP_STATUS"] = "FRIEND_REQUEST_PENDING";
					$fnSqlParamArray["CREATION_DATE"]       = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]       = date("H:i:s");
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					if(  1 == $fnRtCode ){
						Middatabase::loghandler("[Middatabase] [setNewFriendRequestInfo()] Successfully Created New Friends Request Entry");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setNewFriendRequestInfo()] Unable to create New Friends Request Entry");
						return 0;
					}//++else end
			   }//++public function setNewFriendRequestInfo() end
			   
			   public function setAcceptFriendRequestInfo($fnProfileID1,$fnProfileID2,$fnActionProfileID){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setAcceptFriendRequestInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					$fnSql = NULL;
					$fnSql = "UPDATE SOCIAL_RELATIONSHIP_STATUS SET";
					
					if(  null == $fnProfileID1  ){
					    Middatabase::loghandler("[Middatabase] [setAcceptFriendRequestInfo()] Invalid ProfileID1 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnProfileID2  ){
					    Middatabase::loghandler("[Middatabase] [setAcceptFriendRequestInfo()] Invalid ProfileID2 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnActionProfileID  ){
					    Middatabase::loghandler("[Middatabase] [setAcceptFriendRequestInfo()] Invalid Action ProfileID Param Found");
						return 0;
					}//++if end
					
			        $fnSql = $fnSql." RELATIONSHIP_STATUS='FRIENDS'";
				
					$fnSql = $fnSql." WHERE ( (PROFILE_ID_ONE='".$fnProfileID1."' AND PROFILE_ID_TWO='".$fnProfileID2."') OR  (PROFILE_ID_ONE='".$fnProfileID2."' AND PROFILE_ID_TWO='".$fnProfileID1."') ) AND ACTION_PROFILE_ID='".$fnActionProfileID."' AND RELATIONSHIP_STATUS='FRIEND_REQUEST_PENDING';";
					Middatabase::loghandler("[Middatabase] [setAcceptFriendRequestInfo()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setAcceptFriendRequestInfo()] Successfully updated accept friend request");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setAcceptFriendRequestInfo()] Unable to update accept friend request");
						return 0;
					}//else end
					
			   }//++public function setAcceptFriendRequestInfo() end
			   
 			   public function setRejectFriendRequestInfo($fnProfileID1,$fnProfileID2,$fnActionProfileID){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setRejectFriendRequestInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					$fnSql = NULL;
					$fnSql = "DELETE FROM SOCIAL_RELATIONSHIP_STATUS ";
					
					if(  null == $fnProfileID1  ){
					    Middatabase::loghandler("[Middatabase] [setRejectFriendRequestInfo()] Invalid ProfileID1 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnProfileID2  ){
					    Middatabase::loghandler("[Middatabase] [setRejectFriendRequestInfo()] Invalid ProfileID2 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnActionProfileID  ){
					    Middatabase::loghandler("[Middatabase] [setRejectFriendRequestInfo()] Invalid Action ProfileID Param Found");
						return 0;
					}//++if end
				
					$fnSql = $fnSql." WHERE (PROFILE_ID_ONE='".$fnProfileID1."' AND PROFILE_ID_TWO='".$fnProfileID2."') OR  (PROFILE_ID_ONE='".$fnProfileID2."' AND PROFILE_ID_TWO='".$fnProfileID1."') AND ACTION_PROFILE_ID='".$fnActionProfileID."' AND RELATIONSHIP_STATUS='FRIEND_REQUEST_PENDING';";
					Middatabase::loghandler("[Middatabase] [setRejectFriendRequestInfo()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setRejectFriendRequestInfo()] Successfully updated reject friend request");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setRejectFriendRequestInfo()] Unable to update reject friend request");
						return 0;
					}//else end
					
			   }//++public function setRejectFriendRequestInfo() end
			   
			   public function setRemoveFriendInfo($fnProfileID1,$fnProfileID2,$fnActionProfileID){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setRemoveFriendInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					$fnSql = NULL;
					$fnSql = "DELETE FROM SOCIAL_RELATIONSHIP_STATUS ";
					
					if(  null == $fnProfileID1  ){
					    Middatabase::loghandler("[Middatabase] [setRemoveFriendInfo()] Invalid ProfileID1 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnProfileID2  ){
					    Middatabase::loghandler("[Middatabase] [setRemoveFriendInfo()] Invalid ProfileID2 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnActionProfileID  ){
					    Middatabase::loghandler("[Middatabase] [setRemoveFriendInfo()] Invalid Action ProfileID Param Found");
						return 0;
					}//++if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID_ONE='".$fnProfileID1."' AND PROFILE_ID_TWO='".$fnProfileID2."' AND ACTION_PROFILE_ID='".$fnActionProfileID."' AND RELATIONSHIP_STATUS='FRIENDS';";
					Middatabase::loghandler("[Middatabase] [setRemoveFriendInfo()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setRemoveFriendInfo()] Successfully remove friend request info");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setRemoveFriendInfo()] Unable to remove friend request info");
						return 0;
					}//else end
					
			   }//++public function setRemoveFriendInfo() end
			   
			   public function setRemoveFriendInfoV2($fnProfileID1,$fnProfileID2){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setRemoveFriendInfoV2()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					$fnSql = NULL;
					$fnSql = "DELETE FROM SOCIAL_RELATIONSHIP_STATUS ";
					
					if(  null == $fnProfileID1  ){
					    Middatabase::loghandler("[Middatabase] [setRemoveFriendInfoV2()] Invalid ProfileID1 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnProfileID2  ){
					    Middatabase::loghandler("[Middatabase] [setRemoveFriendInfoV2()] Invalid ProfileID2 Param Found");
						return 0;
					}//++if end
					
					$fnSql = $fnSql." WHERE ((PROFILE_ID_ONE='".$fnProfileID1."' AND PROFILE_ID_TWO='".$fnProfileID2."') OR (PROFILE_ID_ONE='".$fnProfileID2."' AND PROFILE_ID_TWO='".$fnProfileID1."') ) AND RELATIONSHIP_STATUS='FRIENDS';";
					Middatabase::loghandler("[Middatabase] [setRemoveFriendInfo()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setRemoveFriendInfoV2()] Successfully remove friend request info");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setRemoveFriendInfoV2()] Unable to remove friend request info");
						return 0;
					}//else end
					
			   }//++public function setRemoveFriendInfoV2() end
			   
			   public function setFriendBlockInfo($fnProfileID1,$fnProfileID2,$fnActionProfileID){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setFriendBlockInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode = 0;
					$fnSql    = NULL;
					$fnSql    = "UPDATE SOCIAL_RELATIONSHIP_STATUS SET RELATIONSHIP_STATUS='PROFILE_BLOCKED'";
					
					if(  null == $fnProfileID1  ){
					    Middatabase::loghandler("[Middatabase] [setFriendBlockInfo()] Invalid ProfileID1 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnProfileID2  ){
					    Middatabase::loghandler("[Middatabase] [setFriendBlockInfo()] Invalid ProfileID2 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnActionProfileID  ){
					    Middatabase::loghandler("[Middatabase] [setFriendBlockInfo()] Invalid Action ProfileID Param Found");
						return 0;
					}//++if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID_ONE='".$fnProfileID1."' AND PROFILE_ID_TWO='".$fnProfileID2."' AND ACTION_PROFILE_ID='".$fnActionProfileID."' AND RELATIONSHIP_STATUS='FRIENDS';";
					Middatabase::loghandler("[Middatabase] [setFriendBlockInfo()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setFriendBlockInfo()] Successfully create friend block info");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setFriendBlockInfo()] Unable to create friend block info");
						return 0;
					}//++else end
					
			   }//++public function setFriendBlockInfo() end
			   
			   public function setFriendBlockInfoV2($fnProfileID1,$fnProfileID2,$fnActionProfileID){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setFriendBlockInfoV2()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =  0;
					$fnSql    =  NULL;
					$fnSql    = "INSERT INTO SOCIAL_RELATIONSHIP_STATUS VALUES(:PROFILE_ID_ONE,:PROFILE_ID_TWO,:ACTION_PROFILE_ID,:RELATIONSHIP_STATUS,:CREATION_DATE,:CREATION_TIME );";
					
					if(  null == $fnProfileID1  ){
					    Middatabase::loghandler("[Middatabase] [setFriendBlockInfoV2()] Invalid ProfileID1 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnProfileID2  ){
					    Middatabase::loghandler("[Middatabase] [setFriendBlockInfoV2()] Invalid ProfileID2 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnActionProfileID  ){
					    Middatabase::loghandler("[Middatabase] [setFriendBlockInfoV2()] Invalid Action ProfileID Param Found");
						return 0;
					}//++if end
					
				    $fnRtCode =0;
					$fnSqlParamArray = NULL;
					$fnSqlParamArray= array();
					$fnSqlParamArray["PROFILE_ID_ONE"]      = $fnProfileID1;
					$fnSqlParamArray["PROFILE_ID_TWO"]      = $fnProfileID2; 
					$fnSqlParamArray["ACTION_PROFILE_ID"]   = $fnActionProfileID;
					$fnSqlParamArray["RELATIONSHIP_STATUS"] = "PROFILE_BLOCKED";
					$fnSqlParamArray["CREATION_DATE"]       = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]       = date("H:i:s");
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					if(  1 == $fnRtCode ){
						Middatabase::loghandler("[Middatabase] [setFriendBlockInfoV2()] Successfully Created Friends Blocked Entry");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setFriendBlockInfoV2()] Unable to create Friends Blocked Entry");
						return 0;
					}//++else end
					
			   }//++public function setFriendBlockInfoV2() end
			   
			   public function setOthersBlockInfo($fnProfileID1,$fnProfileID2,$fnActionProfileID){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setOthersBlockInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode                               = 0;
					$fnSql                                  = NULL;
					$fnSql                                  = "INSERT INTO SOCIAL_RELATIONSHIP_STATUS VALUES(:PROFILE_ID_ONE,:PROFILE_ID_TWO,:ACTION_PROFILE_ID,:RELATIONSHIP_STATUS,:CREATION_DATE,:CREATION_TIME );";
					$fnSqlParamArray                        = NULL;
					$fnSqlParamArray                        = array();
					$fnSqlParamArray["PROFILE_ID_ONE"]      = $fnProfileID1;
					$fnSqlParamArray["PROFILE_ID_TWO"]      = $fnProfileID2; 
					$fnSqlParamArray["ACTION_PROFILE_ID"]   = $fnActionProfileID;
					$fnSqlParamArray["RELATIONSHIP_STATUS"] = "PROFILE_BLOCKED";
					$fnSqlParamArray["CREATION_DATE"]       = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]       = date("H:i:s");
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					if(  1 == $fnRtCode ){
						Middatabase::loghandler("[Middatabase] [setOthersBlockInfo()] Successfully Created New Profile Block Entry");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setOthersBlockInfo()] Unable to create New Profile Block Entry");
						return 0;
					}//++else end
					
			   }//++public function setOthersBlockInfo() end
			   
			   public function setFriendUnlockInfo($fnProfileID1,$fnProfileID2,$fnActionProfileID){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setFriendUnlockInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode = 0;
					$fnSql    = NULL;
					$fnSql    = "DELETE FROM SOCIAL_RELATIONSHIP_STATUS ";
					
					if(  null == $fnProfileID1  ){
					    Middatabase::loghandler("[Middatabase] [setFriendUnlockInfo()] Invalid ProfileID1 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnProfileID2  ){
					    Middatabase::loghandler("[Middatabase] [setFriendUnlockInfo()] Invalid ProfileID2 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnActionProfileID  ){
					    Middatabase::loghandler("[Middatabase] [setFriendUnlockInfo()] Invalid Action ProfileID Param Found");
						return 0;
					}//++if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID_ONE='".$fnProfileID1."' AND PROFILE_ID_TWO='".$fnProfileID2."' AND ACTION_PROFILE_ID='".$fnActionProfileID."' AND RELATIONSHIP_STATUS='PROFILE_BLOCKED';";
					Middatabase::loghandler("[Middatabase] [setFriendUnlockInfo()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setFriendUnlockInfo()] Successfully create friend unblock info");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setFriendUnlockInfo()] Unable to create friend unblock info");
						return 0;
					}//else end
					
			   }//++public function setFriendUnlockInfo() end
			   
			   public function setOthersUnblockInfo($fnProfileID1,$fnProfileID2,$fnActionProfileID){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setOthersUnblockInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode = 0;
					$fnSql    = NULL;
					$fnSql    = "DELETE FROM SOCIAL_RELATIONSHIP_STATUS ";
					
					if(  null == $fnProfileID1  ){
					    Middatabase::loghandler("[Middatabase] [setOthersUnblockInfo()] Invalid ProfileID1 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnProfileID2  ){
					    Middatabase::loghandler("[Middatabase] [setOthersUnblockInfo()] Invalid ProfileID2 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnActionProfileID  ){
					    Middatabase::loghandler("[Middatabase] [setOthersUnblockInfo()] Invalid Action ProfileID Param Found");
						return 0;
					}//++if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID_ONE='".$fnProfileID1."' AND PROFILE_ID_TWO='".$fnProfileID2."' AND ACTION_PROFILE_ID='".$fnActionProfileID."' AND RELATIONSHIP_STATUS='PROFILE_BLOCKED';";
					Middatabase::loghandler("[Middatabase] [setFriendUnlockInfo()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setOthersUnblockInfo()] Successfully create profile unblock info");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setOthersUnblockInfo()] Unable to create profile unblock info");
						return 0;
					}//else end
					
			   }//++public function setOthersUnblockInfo() end
			   
			   public function setNewProfileFollowerInfo($fnProfileID1,$fnProfileID2,$fnActionProfileID){
					
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setNewProfileFollowerInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode =0;
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_FRIEND_REQUEST_SQL"];
					$fnSqlParamArray = NULL;
					$fnSqlParamArray= array();
					$fnSqlParamArray["PROFILE_ID_ONE"]      = $fnProfileID1;
					$fnSqlParamArray["PROFILE_ID_TWO"]      = $fnProfileID2; 
					$fnSqlParamArray["ACTION_PROFILE_ID"]   = $fnActionProfileID;
					$fnSqlParamArray["RELATIONSHIP_STATUS"] = "PROFILE_FOLLOWER";
					$fnSqlParamArray["CREATION_DATE"]       = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]       = date("H:i:s");
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					if(  1 == $fnRtCode ){
						Middatabase::loghandler("[Middatabase] [setNewProfileFollowerInfo()] Successfully Created New Profile Follower Entry");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setNewProfileFollowerInfo()] Unable to create New Profile Follower Entry");
						return 0;
					}//++else end
					
			   }//++public function setNewProfileFollowerInfo() end
			   
			   public function setRemoveProfileFollowerInfo($fnProfileID1,$fnProfileID2,$fnActionProfileID){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setRemoveProfileFollowerInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					$fnSql = NULL;
					$fnSql = "DELETE FROM SOCIAL_RELATIONSHIP_STATUS ";
					
					if(  null == $fnProfileID1  ){
					    Middatabase::loghandler("[Middatabase] [setRemoveProfileFollowerInfo()] Invalid ProfileID1 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnProfileID2  ){
					    Middatabase::loghandler("[Middatabase] [setRemoveProfileFollowerInfo()] Invalid ProfileID2 Param Found");
						return 0;
					}//++if end
					
					if(  null == $fnActionProfileID  ){
					    Middatabase::loghandler("[Middatabase] [setRemoveProfileFollowerInfo()] Invalid Action ProfileID Param Found");
						return 0;
					}//++if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID_ONE='".$fnProfileID1."' AND PROFILE_ID_TWO='".$fnProfileID2."' AND ACTION_PROFILE_ID='".$fnActionProfileID."' AND RELATIONSHIP_STATUS='PROFILE_FOLLOWER';";
					Middatabase::loghandler("[Middatabase] [setRemoveProfileFollowerInfo()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setRemoveProfileFollowerInfo()] Successfully remove profile follow info");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setRemoveProfileFollowerInfo()] Unable to remove profile follow info");
						return 0;
					}//else end
					
			   }//++public function setRemoveProfileFollowerInfo() end
			   
			   public function getUserRankOfPostId($fnUserProfileId,$fnPostId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getUserRankOfPostId()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnUserProfileId ){
						Middatabase::loghandler("[Middatabase] [getUserRankOfPostId()] Valid User Profile Id not found");
						return 0;
					}//++if end
					
					if( NULL == $fnPostId ){
						Middatabase::loghandler("[Middatabase] [getUserRankOfPostId()] Valid Post Id not found");
						return 0;
					}//++if end
					
					$sqlCond  ="";
				    $sqlCond  ="USER_RATING_INDEPTH.POST_ID='".$fnPostId."' and  USER_RATING_INDEPTH.PROFILE_ID='".$fnUserProfileId."'";
					
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = array();
					$fnSql = NULL;
					$fnSql = $this->SQL_List["PROFILE_RATING_POST_SELECT_SQL"];
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="AND";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			    }//++public function getUserRankOfPostId() end
			    
			   public function getRankOfPostId($fnPostId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getRankOfPostId()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnPostId ){
						Middatabase::loghandler("[Middatabase] [getRankOfPostId()] Valid Post Id not found");
						return 0;
					}//++if end
					
					$sqlCond  ="";
				    $sqlCond  ="POST_RATING.POST_ID='".$fnPostId."'";
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = array();
					$fnSql = NULL;
					$fnSql = $this->SQL_List["POST_RATING_DETAILS_SELECT_SQL"];
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="AND";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			    }//++public function getRankOfPostId() end
			    
			   public function getUserLikeDisLikeOfPostId($fnUserProfileId,$fnPostId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getUserLikeDisLikeOfPostId()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnUserProfileId ){
						Middatabase::loghandler("[Middatabase] [getUserLikeDisLikeOfPostId()] Valid User Profile Id not found");
						return 0;
					}//++if end
					
					if( NULL == $fnPostId ){
						Middatabase::loghandler("[Middatabase] [getUserLikeDisLikeOfPostId()] Valid Post Id not found");
						return 0;
					}//++if end
					
					$sqlCond  ="";
				    $sqlCond  ="USER_GIVEN_LIKE_DISLIKE.POST_ID='".$fnPostId."' and  USER_GIVEN_LIKE_DISLIKE.PROFILE_ID='".$fnUserProfileId."'";
					
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = array();
					$fnSql = NULL;
					$fnSql = $this->SQL_List["PROFILE_LIKEDISLIKE_POST_SELECT_SQL"];
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="AND";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			    }//++public function getUserLikeDisLikeOfPostId() end
			    
			   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			   
			   public function IsFollower($fnProfileID1,$fnProfileID2,$fnActionProfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [IsFollower()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID1 ){
						Middatabase::loghandler("[Middatabase] [IsFollower()] Valid Profile1 ID Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID2 ){
						Middatabase::loghandler("[Middatabase] [IsFollower()] Valid Profile2 ID Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnActionProfileID ){
						Middatabase::loghandler("[Middatabase] [IsFollower()] Valid Action Profile ID Not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE,
                                     SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO,
                                     SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS,
                                     SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID
                                     FROM  SOCIAL_RELATIONSHIP_STATUS
                                     WHERE ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID1.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID1.'" )
                                     AND   ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID2.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID2.'" )
                                     AND   SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS="PROFILE_FOLLOWER"
                                     AND   SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID ="'.$fnProfileID1.'"
                                     ORDER BY SOCIAL_RELATIONSHIP_STATUS.CREATION_DATE;';
                                     
					$fnSqlConditionType="OR";
					Middatabase::loghandler("[Middatabase] [IsFollower()] SQL: ".$fnSql );
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function IsFollower($fnProfileID1,$fnProfileID2,$fnActionProfileID) end
			   
			   public function IsFollowing($fnProfileID1,$fnProfileID2,$fnActionProfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [IsFollowing()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID1 ){
						Middatabase::loghandler("[Middatabase] [IsFollowing()] Valid Profile1 ID Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID2 ){
						Middatabase::loghandler("[Middatabase] [IsFollowing()] Valid Profile2 ID Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnActionProfileID ){
						Middatabase::loghandler("[Middatabase] [IsFollowing()] Valid Action Profile ID Not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE,
                                     SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO,
                                     SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS,
                                     SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID
                                     FROM  SOCIAL_RELATIONSHIP_STATUS
                                     WHERE ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID1.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID1.'" )
                                     AND   ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID2.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID2.'" )
                                     AND   SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS="PROFILE_FOLLOWER"
                                     AND   SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID ="'.$fnProfileID1.'"
                                     ORDER BY SOCIAL_RELATIONSHIP_STATUS.CREATION_DATE;';
                                     
					$fnSqlConditionType="OR";
					Middatabase::loghandler("[Middatabase] [IsFollowing()] SQL: ".$fnSql );
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function IsFollowing($fnProfileID1,$fnProfileID2,$fnActionProfileID) end
			   
			   public function IsFriends($fnProfileID1,$fnProfileID2){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [IsFriends()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID1 ){
						Middatabase::loghandler("[Middatabase] [IsFriends()] Valid Profile1 ID Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID2 ){
						Middatabase::loghandler("[Middatabase] [IsFriends()] Valid Profile2 ID Not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE,
                                     SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO,
                                     SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS,
                                     SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID
                                     FROM  SOCIAL_RELATIONSHIP_STATUS
                                     WHERE ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID1.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID1.'" )
                                     AND   ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID2.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID2.'" )
                                     AND   SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS="FRIENDS"
                                     ORDER BY SOCIAL_RELATIONSHIP_STATUS.CREATION_DATE;';
                                     
					$fnSqlConditionType="OR";
					Middatabase::loghandler("[Middatabase] [IsFriends()] SQL: ".$fnSql );
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function IsFollower($fnProfileID1,$fnProfileID2,$fnActionProfileID) end
			   
			   public function IsFriendsRequestPending($fnProfileID1,$fnProfileID2,$fnActionProfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [IsFriendsRequestPending()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID1 ){
						Middatabase::loghandler("[Middatabase] [IsFriendsRequestPending()] Valid Profile1 ID Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID2 ){
						Middatabase::loghandler("[Middatabase] [IsFriendsRequestPending()] Valid Profile2 ID Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnActionProfileID ){
						Middatabase::loghandler("[Middatabase] [IsFriendsRequestPending()] Valid Action Profile ID Not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE,
                                     SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO,
                                     SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS,
                                     SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID
                                     FROM  SOCIAL_RELATIONSHIP_STATUS
                                     WHERE ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID1.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID1.'" )
                                     AND   ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID2.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID2.'" )
                                     AND   SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS="FRIEND_REQUEST_PENDING"
                                     AND   SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID ="'.$fnActionProfileID.'"
                                     ORDER BY SOCIAL_RELATIONSHIP_STATUS.CREATION_DATE;';
                                     
					$fnSqlConditionType="OR";
					Middatabase::loghandler("[Middatabase] [IsFriends()] SQL: ".$fnSql );
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function IsFollower($fnProfileID1,$fnProfileID2,$fnActionProfileID) end

			   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			   
			   public function setNewCommunityInfo($fnCommunityInDepthInfoArray){
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setNewCommunityInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode = null;
					//++Step1: Add Community Basic Info
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_USER_BASIC_SQL"];
					$fnSqlParamArray = NULL;
					$str = $fnCommunityInDepthInfoArray["COMMUNITY_NAME"].$fnCommunityInDepthInfoArray["COMMUNITY_DESCRIPTION"].$fnCommunityInDepthInfoArray["COMMUNITY_COUNTRY"].$fnCommunityInDepthInfoArray["COMMUNITY_PLACE"].date("Y-m-d").date("H:i:s");
					$fnProfileId = "PF".CreateId::getIDType1(6,$str);
					$fnSqlParamArray= array();
					$fnSqlParamArray["PROFILE_ID"]       = $fnProfileId;
					$fnSqlParamArray["ISACOMMUNITY"]     = "1"; //++ 1:Community 0:User
					$fnSqlParamArray["USER_FIRST_NAME"]  = "NA";
					$fnSqlParamArray["USER_LAST_NAME"]   = "NA";
					$fnSqlParamArray["USER_EMAIL_ID"]    = "NA";
					$fnSqlParamArray["USER_MOBILE_ID"]   = "NA";
					$fnSqlParamArray["CREATION_DATE"]    = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]    = date("H:i:s");
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					if( 1 == $fnRtCode ){
					    Middatabase::loghandler("[Middatabase] [setNewCommunityInfo()] Register Community Success");
					    $fnRtCode2                          = array();
					    $fnRtCode2["rtcode"]                = 1;
					    $fnRtCode2["communityProfileId"]    = $fnProfileId;
					    return $fnRtCode2;
					}else{
					    Middatabase::loghandler("[Middatabase] [setNewCommunityInfo()] Register Community Success");
					    return null;
					}//else end
			   }//++public function setNewCommunityInfo($fnCommunityInDepthInfoArray) end
			   
			   public function setCommunityInDepthInfo( $fnCommunityProfileID, $fnCommunityInDepthInfoArray ){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setCommunityInDepthInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
				    
					//++Add User In Depth Info
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_COMMUNITY_BASIC_IN_DEPTH_SQL"];
					
					$fnSqlParamArray = NULL;
					$fnSqlParamArray= array();
				    $fnSqlParamArray["COMMUNITY_PROFILE_ID"]      = $fnCommunityProfileID;
				    $fnSqlParamArray["COMMUNITY_STATUS"]          = $fnCommunityInDepthInfoArray["COMMUNITY_STATUS"];
				    $fnSqlParamArray["COMMUNITY_AUTHOR_ID"]       = $fnCommunityInDepthInfoArray["COMMUNITY_AUTHOR_ID"];
					$fnSqlParamArray["COMMUNITY_NAME"]            = $fnCommunityInDepthInfoArray["COMMUNITY_NAME"];
					$fnSqlParamArray["COMMUNITY_DESCRIPTION"]     = $fnCommunityInDepthInfoArray["COMMUNITY_DESCRIPTION"];
					$fnSqlParamArray["COMMUNITY_COUNTRY"]         = $fnCommunityInDepthInfoArray["COMMUNITY_COUNTRY"];
					$fnSqlParamArray["COMMUNITY_PLACE"]           = $fnCommunityInDepthInfoArray["COMMUNITY_PLACE"];
				    $fnSqlParamArray["CREATION_DATE"]             = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]             = date("H:i:s");
					$fnRtCode = 0;
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
                    if(  1 == $fnRtCode ){
						Middatabase::loghandler("[Middatabase] [setCommunityInDepthInfo()] Successfully Created community indepth information");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setCommunityInDepthInfo()] Unable to create community indepth information");
						return 0;
					}//++else end
					
			   }//++public function setCommunityInDepthInfo() end
			   
			   public function setCommunityCategoryInfo( $fnCommunityProfileID, $fnCommunityInDepthInfoArray ){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setCommunityCategoryInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
				    
					//Step2: Add User In Depth Info
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_COMMUNITY_CATEGORY_SQL"];
					
					$fnSqlParamArray = NULL;
					$fnSqlParamArray= array();
				    $fnSqlParamArray["COMMUNITY_PROFILE_ID"]      = $fnCommunityProfileID;
				    $fnSqlParamArray["COMMUNITY_CATEGORY_ID"]     = $fnCommunityInDepthInfoArray["COMMUNITY_CATEGORY_ID"];
				    $fnSqlParamArray["CREATION_DATE"]             = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]             = date("H:i:s");
					$fnRtCode = 0;
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
                    if(  1 == $fnRtCode ){
						Middatabase::loghandler("[Middatabase] [setCommunityCategoryInfo()] Successfully Created community category information");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setCommunityCategoryInfo()] Unable to create community category information");
						return 0;
					}//++else end
					
			   }//++public function setUserInDepthInfo() end
			   
			   public function getCategoryId($fnCategoryName){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getCategoryId()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnCategoryName ){
						Middatabase::loghandler("[Middatabase] [getCategoryId()] Valid Category Name not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT CATEGORIES.CATEGORY_ID,
					                 CATEGORIES.CATEGORY_NAME
                                     FROM  CATEGORIES
                                     WHERE CATEGORIES.CATEGORY_NAME="'.$fnCategoryName.'";';
                                     
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			    }//++public function getCategoryId() end
			    
			   public function setCommunityAdmins($fnCommunityProfileID,$fnUserProfileID,$fnUserRoles){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setCommunityAdmins()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnCommunityProfileID ){
						Middatabase::loghandler("[Middatabase] [setCommunityAdmins()] Valid Community Profile id not found");
						return 0;
					}//++if end
					
					if( NULL == $fnUserProfileID ){
						Middatabase::loghandler("[Middatabase] [setCommunityAdmins()] Valid User Profile id not found");
						return 0;
					}//++if end
					
					if( NULL == $fnUserRoles ){
						Middatabase::loghandler("[Middatabase] [setCommunityAdmins()] Valid User roles not found");
						return 0;
					}//++if end
					
					//++Add User In Depth Info
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_COMMUNITY_ADMIN_ROLES_SQL"];
					
					$fnSqlParamArray = NULL;
					$fnSqlParamArray= array();
				    $fnSqlParamArray["COMMUNITY_PROFILE_ID"]      = $fnCommunityProfileID;
				    $fnSqlParamArray["USER_PROFILE_ID"]           = $fnUserProfileID;
				    $fnSqlParamArray["USER_ROLES"]                = $fnUserRoles;
				    $fnSqlParamArray["CREATION_DATE"]             = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]             = date("H:i:s");
					$fnRtCode = 0;
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
                    if(  1 == $fnRtCode ){
						Middatabase::loghandler("[Middatabase] [setCommunityAdmins()] Successfully Created community user roles information");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setCommunityAdmins()] Unable to create community community user roles information");
						return 0;
					}//++else end
					
			    }//++public function setCommunityAdmins() end
			   
			   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			   
			   //++Post Related Insert Query Operations
			   
			   //++Create New Post Entry
			   public function createPostBasicEntry($fnProfileID=NULL,$fnPostBasicArray=NULL,$fnPostIDCounter=NULL){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [createPostBasicEntry()] Valid Database Connection Not found");
							return 0;
						}//++if end
						$str = "";
						if(NULL== $fnPostIDCounter ){
						    $str      = $fnProfileID.date("Y-m-d").date("H:i:s");
						}else{
						    $str      = $fnProfileID.date("Y-m-d").date("H:i:s").$fnPostIDCounter;
						}//else end
						$fnPostID = "PS".CreateId::getIDType1(6,$str);
						Middatabase::loghandler("[Middatabase] [createPostBasicEntry()] ProfileID:  ".$fnProfileID );
						Middatabase::loghandler("[Middatabase] [createPostBasicEntry()] PostID: ".$fnPostID );
						
						$fnSql = NULL;
						$fnSql = $this->SQL_List["POST_BASIC_INSERT_SQL"];
						
						$fnSqlParamArray = NULL;
						$fnSqlParamArray = array();
						
						$fnSqlParamArray["POST_ID"]                = $fnPostID;
						$fnSqlParamArray["POST_TYPE"]              = $fnPostBasicArray["POST_TYPE"];
						$fnSqlParamArray["POST_STATUS"]            = $fnPostBasicArray["POST_STATUS"];
						$fnSqlParamArray["POST_PRIVACY"]           = $fnPostBasicArray["POST_PRIVACY"];
						$fnSqlParamArray["POST_AUTHOR"]            = $fnPostBasicArray["POST_AUTHOR"];
						$fnSqlParamArray["POST_TITLE"]             = $fnPostBasicArray["POST_TITLE"];
						$fnSqlParamArray["POST_TEXT"]              = $fnPostBasicArray["POST_TEXT"];
						$fnSqlParamArray["POST_LOCATION"]          = $fnPostBasicArray["POST_LOCATION"];
						$fnSqlParamArray["POST_PARENT"]            = $fnPostBasicArray["POST_PARENT"];
						$fnSqlParamArray["POST_HAVEANYCHILD"]      = $fnPostBasicArray["POST_HAVEANYCHILD"];
						$fnSqlParamArray["POST_ISACOMMUNITYPOST"]  = $fnPostBasicArray["POST_ISACOMMUNITYPOST"];
						$fnSqlParamArray["POST_HAVEANYIMAGES"]     = $fnPostBasicArray["POST_HAVEANYIMAGES"];
						$fnSqlParamArray["POST_NUMBEROFIMAGES"]    = $fnPostBasicArray["POST_NUMBEROFIMAGES"];
						$fnSqlParamArray["POST_HAVEANYVIDEOS"]     = $fnPostBasicArray["POST_HAVEANYVIDEOS"];
						$fnSqlParamArray["POST_NUMBEROFVIDEOS"]    = $fnPostBasicArray["POST_NUMBEROFVIDEOS"];
					    $fnSqlParamArray["CREATION_DATE"]          = date("Y-m-d");
						$fnSqlParamArray["CREATION_TIME"]          = date("H:i:s");
						
						$rtarray=array();
						Middatabase::loghandler("[Middatabase] [createPostBasicEntry()] SQL: ".$fnSql );
						$this->beginTransaction();
						$fnSqlRtCode =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
						if( 1 == $fnSqlRtCode){
							Middatabase::loghandler("[Middatabase] [createPostBasicEntry()] Post basic create success" );
							$rtarray["rtcode"]=1;
                            $this->commitTransaction();
						}else{
							Middatabase::loghandler("[Middatabase] [createPostBasicEntry()] Post basic create failed" );
							$rtarray["rtcode"]=0;
							$this->rollBackTransaction();
						}//++else end
						
						$rtarray["postid"]=$fnPostID;
						return $rtarray;
						
			    }//++function createPostBasicEntry() end
			   
			   //++Create New Post Media Entry
			   public function createPostMediaEntry($fnPostID=NULL,$fnProfileID=NULL,$fnPostMediaArray=NULL){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [createPostMediaEntry()] Valid Database Connection Not found");
							return 0;
						}//++if end
						$str      = $fnProfileID.$fnPostID.date("Y-m-d").date("H:i:s");
						$fnPostMediaID = "PMI".CreateId::getIDType1(6,$str);
						Middatabase::loghandler("[Middatabase] [createPostMediaEntry()] ProfileID:  ".$fnProfileID );
						Middatabase::loghandler("[Middatabase] [createPostMediaEntry()] PostID: ".$fnPostID );
						Middatabase::loghandler("[Middatabase] [createPostMediaEntry()] PostMediaID: ".$fnPostMediaID );
						
						$fnSql = NULL;
						$fnSql = $this->SQL_List["POST_MEDIA_INSERT_SQL"];
						
						$fnSqlParamArray = NULL;
						$fnSqlParamArray = array();
						
						$fnSqlParamArray["POST_ID"]                = $fnPostID;
						$fnSqlParamArray["POST_MEDIA_ID"]          = $fnPostMediaID;
						$fnSqlParamArray["POST_MEDIA_TYPE"]        = $fnPostMediaArray["POST_MEDIA_TYPE"];
						$fnSqlParamArray["POST_MEDIA_NAME"]        = $fnPostMediaArray["POST_MEDIA_NAME"];
						$fnSqlParamArray["ALBUM_ID"]               = $fnPostMediaArray["ALBUM_ID"];
					    $fnSqlParamArray["CREATION_DATE"]          = date("Y-m-d");
						$fnSqlParamArray["CREATION_TIME"]          = date("H:i:s");
						
						Middatabase::loghandler("[Middatabase] [createPostMediaEntry()] SQL: ".$fnSql );
						$this->beginTransaction();
						$fnSqlRtCode =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
						if( 1 == $fnSqlRtCode){
							Middatabase::loghandler("[Middatabase] [createPostMediaEntry()] Post media create success" );
							$this->commitTransaction();
						}else{
							Middatabase::loghandler("[Middatabase] [createPostMediaEntry()] Post media create failed" );
							$this->rollBackTransaction();
						}//++else end
						
						return $fnSqlRtCode;
						
			    }//++function createPostMediaEntry() end
			    
			   //++Create New Post Rating Entry
			   public function createPostRatingEntry($fnPostID=NULL){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [createPostRatingEntry()] Valid Database Connection Not found");
							return 0;
						}//++if end
						Middatabase::loghandler("[Middatabase] [createPostRatingEntry()] PostID: ".$fnPostID );
						$fnSql = NULL;
						$fnSql = $this->SQL_List["POST_RATING_INSERT_SQL"];
						
						$fnSqlParamArray = NULL;
						$fnSqlParamArray = array();
						$fnSqlParamArray["POST_ID"]           = $fnPostID;
						$fnSqlParamArray["RATING_10"]         = "0";
						$fnSqlParamArray["RATING_9"]          = "0";
						$fnSqlParamArray["RATING_8"]          = "0";
						$fnSqlParamArray["RATING_7"]          = "0";
						$fnSqlParamArray["RATING_6"]          = "0";
						$fnSqlParamArray["RATING_5"]          = "0";
						$fnSqlParamArray["RATING_4"]          = "0";
						$fnSqlParamArray["RATING_3"]          = "0";
						$fnSqlParamArray["RATING_2"]          = "0";
						$fnSqlParamArray["RATING_1"]          = "0";
					    $fnSqlParamArray["CREATION_DATE"]          = date("Y-m-d");
						$fnSqlParamArray["CREATION_TIME"]          = date("H:i:s");
						
						Middatabase::loghandler("[Middatabase] [createPostRatingEntry()] SQL: ".$fnSql );
						$this->beginTransaction();
						$fnSqlRtCode =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
						if( 1 == $fnSqlRtCode){
							Middatabase::loghandler("[Middatabase] [createPostRatingEntry()] Post rating create success" );
							$this->commitTransaction();
						}else{
							Middatabase::loghandler("[Middatabase] [createPostRatingEntry()] Post rating create failed" );
							$this->rollBackTransaction();
						}//++else end
						
						return $fnSqlRtCode;
						
			    }//++function createPostRatingEntry() end
			   
			   //++Create New Post Like/DisLike Entry
			   public function createPostLikeDisLikeEntry($fnPostID=NULL){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [createPostLikeDisLikeEntry()] Valid Database Connection Not found");
							return 0;
						}//++if end
						Middatabase::loghandler("[Middatabase] [createPostLikeDisLikeEntry()] PostID: ".$fnPostID );
						$fnSql = NULL;
						$fnSql = $this->SQL_List["POST_LIKEDISLIKE_INSERT_SQL"];
						
						$fnSqlParamArray = NULL;
						$fnSqlParamArray = array();
						$fnSqlParamArray["POST_ID"]           = $fnPostID;
						$fnSqlParamArray["TOTAL_LIKES"]       = "0";
						$fnSqlParamArray["TOTAL_DISLIKE"]     = "0";
					    $fnSqlParamArray["CREATION_DATE"]     = date("Y-m-d");
						$fnSqlParamArray["CREATION_TIME"]     = date("H:i:s");
						
						Middatabase::loghandler("[Middatabase] [createPostRatingEntry()] SQL: ".$fnSql );
						$this->beginTransaction();
						$fnSqlRtCode =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
						if( 1 == $fnSqlRtCode){
							Middatabase::loghandler("[Middatabase] [createPostLikeDisLikeEntry()] Post like/dislike create success" );
							$this->commitTransaction();
						}else{
							Middatabase::loghandler("[Middatabase] [createPostLikeDisLikeEntry()] Post like/dislike create failed" );
							$this->rollBackTransaction();
						}//++else end
						
						return $fnSqlRtCode;
						
			    }//++function createPostLikeDisLikeEntry() end
			   
			   //++Get Album ID for Post media creation
			   public function getAlbumIdByAlbumName($fnProfileID,$fnAlbumName){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getAlbumIdByAlbumName()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getAlbumIdByAlbumName()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					if( NULL == $fnAlbumName ){
						Middatabase::loghandler("[Middatabase] [getAlbumIdByAlbumName()] Valid Album Name not found");
						return 0;
					}//++if end
					
					Middatabase::loghandler("[Middatabase] [getAlbumIdByAlbumName()] ProfileID: ".$fnProfileID);
					Middatabase::loghandler("[Middatabase] [getAlbumIdByAlbumName()] AlbumName: ".$fnAlbumName);
					
					$sqlCond="";
					$sqlCond =$sqlCond." ALBUM_INFO.ALBUM_AUTHOR_ID='".$fnProfileID."'";
				    $sqlCond =$sqlCond." AND ALBUM_INFO.ALBUM_NAME='".$fnAlbumName."'";
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = $this->SQL_List["POST_GET_ALBUMNAME_SELECT_SQL"];
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			    }//++public function getAlbumIdByAlbumName() end
			   
			   public function updateProfileCurrentImageEntry($fnProfileID=NULL,$fnImageType=NULL,$fnImageStatus=0){ //Default Image Status Disable
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfilePlace()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_CURRENT_IMAGE SET";
					
					if( (null == $fnProfileID) || (null == $fnImageType) ){
					    Middatabase::loghandler("[Middatabase] [updateProfileCurrentImageEntry()] Invalid Param Found");
						return 0;
					}//if end
					
					if( 1 == $fnImageStatus ){
				        $fnImageStatus      = "Active";   //1: Active  0: InActive
				    }else if( 0 == $fnImageStatus ){
						$fnImageStatus      = "InActive"; //1: Active  0: InActive
					}//++else if end
					
					$fnSql = $fnSql." IMAGE_STATUS='".$fnImageStatus."'";
					
					$fnCurrentImageType="";
					if( 1 == $fnImageType ){
						 $fnCurrentImageType        = "Profile";   // 1: Profile 2: Cover
					}else if( 2 == $fnImageType ){
						 $fnCurrentImageType        = "Cover";     // 1: Profile 2: Cover
					}//++else if end
				
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileID."' AND IMAGE_TYPE='".$fnCurrentImageType."' AND IMAGE_STATUS='Active' ";
					Middatabase::loghandler("[Middatabase] [updateProfileCurrentImageEntry()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileCurrentImageEntry()] Successfully updated profile current image status for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileCurrentImageEntry()] Unable to update profile current image status for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileCurrentImageEntry() end
	           
	           public function removeCurrentImageEntry($fnProfileID,$fnImageType){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [removeCurrentImageEntry()] Valid Database Connection Not found");
							return 0;
						}//++if end
						Middatabase::loghandler("[Middatabase] [removeCurrentImageEntry()] Profile ID: ".$fnProfileID );
						$fnSql = NULL;
						$fnSql = "DELETE FROM USER_CURRENT_IMAGE ";
						$fnCurrentImageType = null;
						if( 1 == $fnImageType ){
						    $fnCurrentImageType        = "Profile";   //++1: Profile 2: Cover
						}else if( 2 == $fnImageType ){
						    $fnCurrentImageType        = "Cover";     //++1: Profile 2: Cover
						}//else if end
						$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileID."' AND IMAGE_TYPE='".$fnCurrentImageType."' AND ( IMAGE_STATUS='Active' OR IMAGE_STATUS='InActive') ";
						Middatabase::loghandler("[Middatabase] [removeCurrentImageEntry()] SQL: ".$fnSql );
						$fnSqlConditionArray=NULL;
					    $fnSqlConditionType="AND";
					    $fnSqlOrderByArray=NULL;
					    $fnSqlParamArray=NULL;
					    $this->beginTransaction();
						$fnSqlRtCode =  $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL);  //++remove all previous current image entry
						if( 0 != $fnSqlRtCode){
							Middatabase::loghandler("[Middatabase] [removeCurrentImageEntry()] Profile current image delete success" );
							$this->commitTransaction();
						}else{
							Middatabase::loghandler("[Middatabase] [removeCurrentImageEntry()] Profile current image delete failed" );
							$this->rollBackTransaction();
						}//++else end
						return $fnSqlRtCode;
						
			   }//++function removeCurrentImageEntry() end
			   
			   public function removeCurrentImageByPostId($fnProfileID,$fnPostID){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [removeCurrentImageByPostId()] Valid Database Connection Not found");
							return 0;
						}//++if end
						if( NULL == $fnProfileID ){
							Middatabase::loghandler("[Middatabase] [createPostRatingEntry()] Valid Profile Id Not found");
							return 0;
						}//++if end
						if( NULL == $fnPostID ){
							Middatabase::loghandler("[Middatabase] [createPostRatingEntry()] Valid Post Id Not found");
							return 0;
						}//++if end
						Middatabase::loghandler("[Middatabase] [removeCurrentImageByPostId()] Profile ID: ".$fnProfileID );
						$fnSql = NULL;
						$fnSql = "DELETE FROM USER_CURRENT_IMAGE ";
						$fnCurrentImageType = null;
						$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileID."' AND POST_ID='".$fnPostID."';";
						Middatabase::loghandler("[Middatabase] [removeCurrentImageEntry()] SQL: ".$fnSql );
						$fnSqlConditionArray=NULL;
					    $fnSqlConditionType="AND";
					    $fnSqlOrderByArray=NULL;
					    $fnSqlParamArray=NULL;
					    //++$this->beginTransaction();
						$fnSqlRtCode =  $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL);  //++remove all previous current image entry
						if( 0 != $fnSqlRtCode){
							Middatabase::loghandler("[Middatabase] [removeCurrentImageByPostId()] Profile current image by post id delete success" );
							//++$this->commitTransaction();
						}else{
							Middatabase::loghandler("[Middatabase] [removeCurrentImageByPostId()] Profile current image by post id delete failed" );
							//++$this->rollBackTransaction();
						}//++else end
						return $fnSqlRtCode;
						
			   }//++function removeCurrentImageByPostId() end
			   
			   public function createCurrentImageEntry($fnProfileID,$fnImageType,$fnImageStatus,$fnImageName,$fnPostID=null){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [createCurrentImageEntry()] Valid Database Connection Not found");
							return 0;
						}//++if end
						Middatabase::loghandler("[Middatabase] [createCurrentImageEntry()] Profile ID: ".$fnProfileID );
						$fnSql = NULL;
						$fnSql = $this->SQL_List["PROFILE_CURRENT_IMAGE_INSERT_SQL"];
						$fnSqlParamArray = NULL;
						$fnSqlParamArray = array();
						$fnSqlParamArray["PROFILE_ID"]     = $fnProfileID;
						//post id
						$fnSqlParamArray["POST_ID"]        = $fnPostID;   
						if( 1 == $fnImageType ){
						    $fnSqlParamArray["IMAGE_TYPE"]        = "Profile";   //1: Profile 2: Cover
						}else if( 2 == $fnImageType ){
						    $fnSqlParamArray["IMAGE_TYPE"]        = "Cover";     //1: Profile 2: Cover
						}//else if end
						
						if( 1 == $fnImageStatus ){
						    $fnSqlParamArray["IMAGE_STATUS"]      = "Active";   //1: Active  0: InActive
						}else if( 0 == $fnImageStatus ){
						    $fnSqlParamArray["IMAGE_STATUS"]      = "InActive"; //1: Active  0: InActive
						}//else if end
						
						$fnSqlParamArray["IMAGE_NAME"]        = $fnImageName;   //crop cover name
					    $fnSqlParamArray["CREATION_DATE"]     = date("Y-m-d");
						$fnSqlParamArray["CREATION_TIME"]     = date("H:i:s");
						Middatabase::loghandler("[Middatabase] [createCurrentImageEntry()] SQL: ".$fnSql );
						$this->beginTransaction();
						//++Deactivate all previous current image entry
						$fnSqlRtCode1 =  $this->updateProfileCurrentImageEntry($fnProfileID,$fnImageType,$fnImageStatus=0); 
						$fnSqlRtCode2 =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
						if( 1 == $fnSqlRtCode2){
							Middatabase::loghandler("[Middatabase] [createCurrentImageEntry()] Profile current image create success" );
							$this->commitTransaction();
						}else{
							Middatabase::loghandler("[Middatabase] [createCurrentImageEntry()] Profile current image create failed" );
							$this->rollBackTransaction();
						}//++else end
						
						return $fnSqlRtCode2;
						
			   }//++function createCurrentImageEntry() end
			   
			   //++Get Profile Image or Cover Image
			   public function getCurrentImage($fnProfileID,$fnImageType){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getCurrentImage()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getCurrentImage()] Valid Profile ID not found");
						return 0;
					}//++if end
					$sqlCond=null;
					if( NULL != $fnProfileID ){
						$sqlCond =" USER_CURRENT_IMAGE.PROFILE_ID='".$fnProfileID."' AND USER_CURRENT_IMAGE.IMAGE_STATUS='Active' AND USER_CURRENT_IMAGE.IMAGE_TYPE='".$fnImageType."'";
					}//if end
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = $this->SQL_List['PROFILE_CURRENT_IMAGE_SELECT_SQL'];
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			    }//++public function getCurrentImage() end
			    
			   public function getCurrentImageInfoByPostId($fnProfileID,$fnPostId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getCurrentImage()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getCurrentImage()] Valid Profile ID not found");
						return 0;
					}//++if end
					$sqlCond=null;
					if( NULL != $fnPostId ){
						$sqlCond =" USER_CURRENT_IMAGE.PROFILE_ID='".$fnProfileID."' AND USER_CURRENT_IMAGE.IMAGE_STATUS='Active' AND USER_CURRENT_IMAGE.POST_ID='".$fnPostId."'";
					}//++if end
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = $this->SQL_List['PROFILE_CURRENT_IMAGE_SELECT_SQL'];
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getCurrentImageInfoByPostId() end
			   
			   //++Get Any profile album images list
			   public function getCurrentAlbumImages($fnProfileID,$fnAlbumName,$fnPostType,$fnPostStatus){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getCurrentAlbumImages()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getCurrentAlbumImages()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					if( NULL == $fnAlbumName ){
						Middatabase::loghandler("[Middatabase] [getCurrentAlbumImages()] Valid Album Namee not found");
						return 0;
					}//++if end
					
					if( NULL == $fnPostType ){
						Middatabase::loghandler("[Middatabase] [getCurrentAlbumImages()] Valid Post Type not found");
						return 0;
					}//++if end
					
					if( NULL == $fnPostStatus ){
						Middatabase::loghandler("[Middatabase] [getCurrentAlbumImages()] Valid Post status not found");
						return 0;
					}//++if end
			
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT   POST_BASIC.POST_ID,
                                       POST_BASIC.POST_TYPE,
                                       POST_BASIC.POST_STATUS,
                                       POST_BASIC.POST_PRIVACY,
                                       POST_BASIC.POST_AUTHOR,
                                       POST_BASIC.POST_TITLE,
                                       POST_BASIC.POST_TEXT,
                                       POST_BASIC.POST_LOCATION,
                                       POST_BASIC.CREATION_DATE,
                                       POST_BASIC.CREATION_TIME,
                                       POST_MEDIA.ALBUM_ID,
                                       POST_MEDIA.POST_MEDIA_ID,
                                       POST_MEDIA.POST_MEDIA_TYPE,
                                       POST_MEDIA.POST_MEDIA_NAME
                                       FROM POST_BASIC
                                       INNER JOIN POST_MEDIA ON POST_MEDIA.POST_ID=POST_BASIC.POST_ID
                                       WHERE POST_BASIC.POST_AUTHOR ="'.$fnProfileID.'"     AND
                                             POST_BASIC.POST_TYPE   ="'.$fnPostType.'"      AND 
                                             POST_BASIC.POST_STATUS ="'.$fnPostStatus.'"    AND
                                         	 POST_MEDIA.ALBUM_ID IN ( SELECT ALBUM_ID FROM ALBUM_INFO WHERE ALBUM_INFO.ALBUM_NAME="'.$fnAlbumName.'" AND ALBUM_INFO.ALBUM_AUTHOR_ID="'.$fnProfileID.'")
                                         	 ORDER BY POST_BASIC.CREATION_DATE DESC, POST_BASIC.CREATION_TIME DESC;';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			    }//++public function getCurrentImage() end
			   
			   public function getCommunityList($fnProfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getCommunityList()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getCommunityList()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					//++PFy1kxsv
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PROFILE_ID,
                                     COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_AUTHOR_ID,
                                     COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_NAME,
                                     COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_STATUS
                                     FROM  COMMUNITY_BASIC_INFO_INDEPTH
                                     INNER JOIN USER_BASIC_INFO ON USER_BASIC_INFO.PROFILE_ID = COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PROFILE_ID
                                     WHERE COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_STATUS="ACTIVE" AND 
                                           COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_AUTHOR_ID="'.$fnProfileID.'";';
                                     
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getCommunityList() end
			   
			   public function getSocialRelationShipStatus($fnProfileID1,$fnProfileID2){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getSocialRelationShipStatus()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID1 ){
						Middatabase::loghandler("[Middatabase] [getSocialRelationShipStatus()] Valid Profile ID1 not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID2 ){
						Middatabase::loghandler("[Middatabase] [getSocialRelationShipStatus()] Valid Profile ID2 not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE,
                                     SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO,
                                     SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS,
                                     SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID
                                     FROM  SOCIAL_RELATIONSHIP_STATUS
                                     WHERE ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID1.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID1.'" )
                                     AND   ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID2.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID2.'" );';
                                     
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getSocialRelationShipStatus() end
			   
			   public function getFriendList($fnProfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getFriendList()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getFriendList()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE,
                                     SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO,
                                     SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS
                                     FROM  SOCIAL_RELATIONSHIP_STATUS
                                     WHERE ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID.'" )
                                     AND   SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS="FRIENDS"
                                     ORDER BY SOCIAL_RELATIONSHIP_STATUS.CREATION_DATE;';
                                     
					$fnSqlConditionType="OR";
					Middatabase::loghandler("[Middatabase] [getFriendList()] SQL: ".$fnSql);
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getFriendList() end
			    
			   public function getFollowersList($fnProfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getFollowersList()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getFollowersList()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE,
                                     SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO,
                                     SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS,
                                     SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID
                                     FROM  SOCIAL_RELATIONSHIP_STATUS
                                     WHERE ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID.'" )
                                     AND   SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS="PROFILE_FOLLOWER"
                                     AND   SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID !="'.$fnProfileID.'"
                                     ORDER BY SOCIAL_RELATIONSHIP_STATUS.CREATION_DATE;';
                                     
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getFollowersList() end
			   
			   public function getFollowersListV2($fnProfileID1,$fnProfileID2){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getFollowersListV2()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID1 ){
						Middatabase::loghandler("[Middatabase] [getFollowersListV2()] Valid Profile ID1 not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID2 ){
						Middatabase::loghandler("[Middatabase] [getFollowersListV2()] Valid Profile ID2 not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE,
                                     SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO,
                                     SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS,
                                     SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID
                                     FROM  SOCIAL_RELATIONSHIP_STATUS
                                     WHERE ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID1.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID1.'" )
                                     AND   ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID2.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID2.'" )
                                     AND   SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS="PROFILE_FOLLOWER"
                                     AND   SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID ="'.$fnProfileID1.'"
                                     ORDER BY SOCIAL_RELATIONSHIP_STATUS.CREATION_DATE;';
                                     
					$fnSqlConditionType="OR";
					Middatabase::loghandler("[Middatabase] [getFollowersListV2()] SQL: ".$fnSql );
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getFollowersListV2() end
			    
			   public function getFollowingList($fnProfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getFollowingList()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getFollowingList()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE,
                                     SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO,
                                     SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS
                                     FROM  SOCIAL_RELATIONSHIP_STATUS
                                     WHERE ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID.'" )
                                     AND   SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS="PROFILE_FOLLOWER"
                                     AND   SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID ="'.$fnProfileID.'"
                                     ORDER BY SOCIAL_RELATIONSHIP_STATUS.CREATION_DATE;';
                                     
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			    }//++public function getFollowingList() end
			    
			   public function getCommunityBasicInfoInDepth($fnProfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getCommunityBasicInfoInDepth()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getCommunityBasicInfoInDepth()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PROFILE_ID,
                                     COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_STATUS,
                                     COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_AUTHOR_ID,
                                     COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_NAME,
                                     COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_COUNTRY,
                                     COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PLACE,
                                     COMMUNITY_BASIC_INFO_INDEPTH.CREATION_DATE,
                                     COMMUNITY_BASIC_INFO_INDEPTH.CREATION_TIME
                                     FROM  COMMUNITY_BASIC_INFO_INDEPTH
                                     WHERE COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PROFILE_ID="'.$fnProfileID.'";';
                                     
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getCommunityBasicInfoInDepth() end
			    
			   public function getFriendRequestList($fnProfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getFriendRequestList()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getFriendRequestList()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE,
                                     SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO,
                                     SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS
                                     FROM  SOCIAL_RELATIONSHIP_STATUS
                                     WHERE ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID.'" )
                                     AND   SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS="FRIEND_REQUEST_PENDING"
                                     AND   SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID !="'.$fnProfileID.'"
                                     ORDER BY SOCIAL_RELATIONSHIP_STATUS.CREATION_DATE;';
                                     
					$fnSqlConditionType="OR";
					Middatabase::loghandler("[Middatabase] [getFriendRequestList()] SQL: ".$fnSql);
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getFriendRequestList() end
			   
			   public function getFriendRequestListV2($fnProfileID,$fnActionProfileID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getFriendRequestListV2()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [getFriendRequestListV2()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE,
                                     SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO,
                                     SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID,
                                     SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS
                                     FROM  SOCIAL_RELATIONSHIP_STATUS
                                     WHERE ( SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_ONE="'.$fnProfileID.'" OR SOCIAL_RELATIONSHIP_STATUS.PROFILE_ID_TWO="'.$fnProfileID.'" )
                                     AND   SOCIAL_RELATIONSHIP_STATUS.RELATIONSHIP_STATUS="FRIEND_REQUEST_PENDING"
                                     AND   SOCIAL_RELATIONSHIP_STATUS.ACTION_PROFILE_ID="'.$fnActionProfileID.'"
                                     ORDER BY SOCIAL_RELATIONSHIP_STATUS.CREATION_DATE;';
                                     
					$fnSqlConditionType="OR";
					Middatabase::loghandler("[Middatabase] [getFriendRequestListV2()] SQL: ".$fnSql);
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getFriendRequestListV2() end

			   public function getFriendProfileDetailedInfo($fnProfileIDArray){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getFriendProfileDetailedInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileIDArray ){
						Middatabase::loghandler("[Middatabase] [getFriendProfileDetailedInfo()] Valid Profile ID Array not found");
						return 0;
					}//++if end
					
					$ArrayLength = sizeof($fnProfileIDArray);
					Middatabase::loghandler("[Middatabase] [getFriendProfileDetailedInfo()] ProfileId ArrayLength:".$ArrayLength );
					$fnProfileIDListStr="";
					for($counter=0;$counter<$ArrayLength;$counter++){
					    
					    if($counter>=1){
					        $fnProfileIDListStr = $fnProfileIDListStr.",'".$fnProfileIDArray[$counter]."'";
					    }else{
					        $fnProfileIDListStr = $fnProfileIDListStr."'".$fnProfileIDArray[$counter]."'";
					    }//else end
					    
					}//for end
					Middatabase::loghandler("[Middatabase] [getFriendProfileDetailedInfo()] ProfileId List:".$fnProfileIDListStr );
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT   USER_BASIC_INFO.PROFILE_ID,
					                   USER_BASIC_INFO.USER_FIRST_NAME,
                                       USER_BASIC_INFO.USER_LAST_NAME,
                                       USER_CURRENT_IMAGE.IMAGE_TYPE ,
                                       USER_CURRENT_IMAGE.IMAGE_NAME ,
                                       SOCIAL_RELATIONSHIP_SUM.SUM_FRIEND,
                                       SOCIAL_RELATIONSHIP_SUM.SUM_FOLLOWER
                                       FROM  USER_BASIC_INFO
                                       INNER JOIN USER_CURRENT_IMAGE      ON USER_CURRENT_IMAGE.PROFILE_ID     =USER_BASIC_INFO.PROFILE_ID
                                       INNER JOIN SOCIAL_RELATIONSHIP_SUM ON SOCIAL_RELATIONSHIP_SUM.PROFILE_ID=USER_BASIC_INFO.PROFILE_ID
                                       WHERE USER_BASIC_INFO.PROFILE_ID IN ('.$fnProfileIDListStr.')  AND
                                             USER_CURRENT_IMAGE.IMAGE_TYPE   ="Profile"   AND
                                             USER_CURRENT_IMAGE.IMAGE_STATUS ="Active"';
                                     
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			    }//++public function getFriendProfileDetailedInfo() end
			    
			   public function getFriendProfileDetailedInfoV2($fnProfileIDArray){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getFriendProfileDetailedInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileIDArray ){
						Middatabase::loghandler("[Middatabase] [getFriendProfileDetailedInfo()] Valid Profile ID Array not found");
						return 0;
					}//++if end
					
					$ArrayLength = sizeof($fnProfileIDArray);
					Middatabase::loghandler("[Middatabase] [getFriendProfileDetailedInfo()] ProfileId ArrayLength:".$ArrayLength );
					$fnProfileIDListStr="";
					for($counter=0;$counter<$ArrayLength;$counter++){
					    
					    if($counter>=1){
					        $fnProfileIDListStr = $fnProfileIDListStr.",'".$fnProfileIDArray[$counter]."'";
					    }else{
					        $fnProfileIDListStr = $fnProfileIDListStr."'".$fnProfileIDArray[$counter]."'";
					    }//else end
					    
					}//for end
					Middatabase::loghandler("[Middatabase] [getFriendProfileDetailedInfo()] ProfileId List:".$fnProfileIDListStr );
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = 'SELECT   USER_BASIC_INFO.PROFILE_ID,
					                   USER_BASIC_INFO.USER_FIRST_NAME,
                                       USER_BASIC_INFO.USER_LAST_NAME,
                                       SOCIAL_RELATIONSHIP_SUM.SUM_FRIEND,
                                       SOCIAL_RELATIONSHIP_SUM.SUM_FOLLOWER
                                       FROM  USER_BASIC_INFO
                                       INNER JOIN SOCIAL_RELATIONSHIP_SUM ON SOCIAL_RELATIONSHIP_SUM.PROFILE_ID=USER_BASIC_INFO.PROFILE_ID
                                       WHERE USER_BASIC_INFO.PROFILE_ID IN ('.$fnProfileIDListStr.')';
                                     
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getFriendProfileDetailedInfo() end
			    
               public function getAnyFavouriteInfo($fnFavouriteCategoryName,$fnFavouriteName){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getAnyFavouriteInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnFavouriteCategoryName ){
						Middatabase::loghandler("[Middatabase] [getAnyFavouriteInfo()] Valid Favourite Category Name not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'SELECT FAVOURITE_LIST.FAVOURITE_ID,
                            		 FAVOURITE_LIST.CATEGORY_ID,
                            		 CATEGORIES.CATEGORY_NAME,
                                     FAVOURITE_LIST.FAVOURITE_NAME,
                                     FAVOURITE_LIST.FAVOURITE_IMAGE_ICON ,
                                     FAVOURITE_LIST.FAVOURITE_MINI_STATEMENT ,
                                     FAVOURITE_LIST.FAVOURITE_WEBURL 
                            FROM  FAVOURITE_LIST
                            INNER JOIN CATEGORIES  ON CATEGORIES.CATEGORY_ID=FAVOURITE_LIST.CATEGORY_ID
                            WHERE CATEGORIES.CATEGORY_NAME="'.$fnFavouriteCategoryName.'"  AND FAVOURITE_LIST.FAVOURITE_NAME LIKE "%'.$fnFavouriteName.'%" ;';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			    }//++public function getAnyFavouriteInfo() end
			   
			   public function getUserFavouriteInfo($fnFavouriteCategoryName,$fnProfileId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getUserFavouriteInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnFavouriteCategoryName ){
						Middatabase::loghandler("[Middatabase] [getUserFavouriteInfo()] Valid Favourite Category Name not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [getUserFavouriteInfo()] Valid Profile Id not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'SELECT USER_FAVOURITE_LIST.PROFILE_ID,
					                 USER_FAVOURITE_LIST.FAVOURITE_ID,
                            		 CATEGORIES.CATEGORY_NAME,
                                     FAVOURITE_LIST.FAVOURITE_NAME,
                                     FAVOURITE_LIST.FAVOURITE_IMAGE_ICON ,
                                     FAVOURITE_LIST.FAVOURITE_MINI_STATEMENT ,
                                     FAVOURITE_LIST.FAVOURITE_WEBURL 
                            FROM  USER_FAVOURITE_LIST
                            INNER JOIN FAVOURITE_LIST  ON FAVOURITE_LIST.FAVOURITE_ID=USER_FAVOURITE_LIST.FAVOURITE_ID
                            INNER JOIN CATEGORIES      ON CATEGORIES.CATEGORY_ID=FAVOURITE_LIST.CATEGORY_ID
                            WHERE CATEGORIES.CATEGORY_NAME="'.$fnFavouriteCategoryName.'"  AND USER_FAVOURITE_LIST.PROFILE_ID="'.$fnProfileId.'";';
                            
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getUserFavouriteInfo() end
			    
			   public function setAnyFavouriteInfo($fnProfileID,$fnFavouriteId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setAnyFavouriteInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [setAnyFavouriteInfo()] Valid Profile Id not found");
						return 0;
					}//++if end
					
					if( NULL == $fnFavouriteId ){
						Middatabase::loghandler("[Middatabase] [setAnyFavouriteInfo()] Valid Favourite Id not found");
						return 0;
					}//++if end
					
					$fnSql = NULL;
					$fnSql = $this->SQL_List["USER_FAVOURITE_LIST_INSERT_SQL"];
					$fnSqlParamArray = NULL;
					$fnSqlParamArray = array();
					$fnSqlParamArray["FAVOURITE_ID"]       = $fnFavouriteId;
					$fnSqlParamArray["PROFILE_ID"]         = $fnProfileID;
					$fnSqlParamArray["CREATION_DATE"]      = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]      = date("H:i:s");
					Middatabase::loghandler("[Middatabase] [setAnyFavouriteInfo()] SQL: ".$fnSql );
					$this->beginTransaction();
					$fnSqlRtCode =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					if( 1 == $fnSqlRtCode){
					    Middatabase::loghandler("[Middatabase] [setAnyFavouriteInfo()] Profile Favourite create success" );
                        $this->commitTransaction();
					}else{
						Middatabase::loghandler("[Middatabase] [setAnyFavouriteInfo()] Post Favourite create failed" );
						$this->rollBackTransaction();
					}//++else end
					
					return $fnSqlRtCode;
					
			    }//++public function setAnyFavouriteInfo() end
			    
			   public function unsetAnyFavouriteInfo($fnProfileID,$fnFavouriteId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [unsetAnyFavouriteInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileID ){
						Middatabase::loghandler("[Middatabase] [unsetAnyFavouriteInfo()] Valid Profile Id not found");
						return 0;
					}//++if end
					
					if( NULL == $fnFavouriteId ){
						Middatabase::loghandler("[Middatabase] [unsetAnyFavouriteInfo()] Valid Favourite Id not found");
						return 0;
					}//++if end
					
				    $sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM USER_FAVOURITE_LIST WHERE FAVOURITE_ID="'.$fnFavouriteId.'" AND PROFILE_ID="'.$fnProfileID.'";';
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 

			   }//++public function unsetAnyFavouriteInfo() end
			   
			   public function getAnyPostIdInfo($fnPostId,$fnPostAuthorId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getAnyPostIdInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnPostId ){
						Middatabase::loghandler("[Middatabase] [getAnyPostIdInfo()] Valid Post Id not found");
						return 0;
					}//++if end
					if( NULL == $fnPostAuthorId ){
						Middatabase::loghandler("[Middatabase] [getAnyPostIdInfo()] Valid Post Author Id not found");
						return 0;
					}//++if end
					$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT POST_BASIC.POST_ID,
                            		 POST_BASIC.POST_TYPE,
                            		 POST_BASIC.POST_STATUS,
                                     POST_BASIC.POST_PRIVACY,
                                     POST_BASIC.POST_AUTHOR,
                                     POST_BASIC.POST_PARENT,
                                     POST_BASIC.POST_ISACOMMUNITYPOST ,
                                     POST_BASIC.POST_HAVEANYCHILD,
                                     POST_BASIC.POST_HAVEANYIMAGES,
                                     POST_BASIC.POST_NUMBEROFIMAGES,
                                     POST_BASIC.POST_HAVEANYVIDEOS,
                                     POST_BASIC.POST_NUMBEROFVIDEOS
                            FROM  POST_BASIC
                            WHERE POST_BASIC.POST_ID="'.$fnPostId.'"  AND POST_BASIC.POST_AUTHOR="'.$fnPostAuthorId.'";';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			    }//++public function getAnyPostIdInfo() end
			    
			   public function getChildPostsInfo($fnParentPostId,$fnPostAuthorId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getChildPostsInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnParentPostId ){
						Middatabase::loghandler("[Middatabase] [getChildPostsInfo()] Valid Parent Post Id not found");
						return 0;
					}//++if end
					if( NULL == $fnPostAuthorId ){
						Middatabase::loghandler("[Middatabase] [getChildPostsInfo()] Valid Post Author Id not found");
						return 0;
					}//++if end
					$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT POST_BASIC.POST_ID,
                            		 POST_BASIC.POST_TYPE,
                            		 POST_BASIC.POST_STATUS,
                                     POST_BASIC.POST_PRIVACY,
                                     POST_BASIC.POST_AUTHOR,
                                     POST_BASIC.POST_PARENT,
                                     POST_BASIC.POST_ISACOMMUNITYPOST ,
                                     POST_BASIC.POST_HAVEANYCHILD,
                                     POST_BASIC.POST_HAVEANYIMAGES,
                                     POST_BASIC.POST_NUMBEROFIMAGES,
                                     POST_BASIC.POST_HAVEANYVIDEOS,
                                     POST_BASIC.POST_NUMBEROFVIDEOS
                            FROM  POST_BASIC
                            WHERE POST_BASIC.POST_PARENT="'.$fnParentPostId.'"  AND POST_BASIC.POST_AUTHOR="'.$fnPostAuthorId.'";';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getChildPostsInfo() end
			   
			   public function removePost($fnPostId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removePost()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnPostId ){
						Middatabase::loghandler("[Middatabase] [removePost()] Valid Post Id not found");
						return 0;
					}//++if end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM POST_BASIC WHERE POST_BASIC.POST_ID="'.$fnPostId.'";';
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 

			   }//++public function removePost() end
			   
			   public function removePostMedia($fnPostId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removePostMedia()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnPostId ){
						Middatabase::loghandler("[Middatabase] [removePostMedia()] Valid Post Id not found");
						return 0;
					}//++if end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM POST_MEDIA WHERE POST_MEDIA.POST_ID="'.$fnPostId.'";';
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 

			   }//++public function removePostMedia() end
			   
			   public function removePostLikeDisLike($fnPostId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removePostLikeDisLike()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnPostId ){
						Middatabase::loghandler("[Middatabase] [removePostLikeDisLike()] Valid Post Id not found");
						return 0;
					}//++if end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM POST_LIKE_DISLIKE WHERE POST_LIKE_DISLIKE.POST_ID="'.$fnPostId.'";';
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
                    
                    /*
                    $fnSql = 'DELETE FROM USER_GIVEN_LIKE_DISLIKE WHERE USER_GIVEN_LIKE_DISLIKE.POST_ID="'.$fnPostId.'";';
					$fnSqlConditionArray= NULL;
					$fnSqlConditionArray= array();
					$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.POST_ID"]     = $fnPostId;
					$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.POST_ID_OP"]  ="=";
				    Middatabase::loghandler("[Middatabase] [removePostLikeDisLike()] PostRating Table SQL: ".$fnSql );
				    $this->beginTransaction();
					$fnRtCode2 = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray,$fnSqlParamArray); 
				    if( ( 1 == $fnRtCode1 ) && ( 1 == $fnRtCode2 ) ){
					    $this->commitTransaction();
						Middatabase::loghandler("[Middatabase] [removePostLikeDisLike()] Successfully removed post like/dislike info");
						return 1;
					}else{
					    $this->rollBackTransaction();
						Middatabase::loghandler("[Middatabase] [removePostLikeDisLike()] Unable to removed post like/dislike info");
						return 0;
				    }//++else end
				    */
				    
			   }//++public function removePostLikeDisLike() end
			   
			   public function removePostRating($fnProfileId,$fnPostId,$fnRatingValue){
				    
				    $fnPostRatingKey="RATING";
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removePostRating()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnPostId ){
						Middatabase::loghandler("[Middatabase] [removePostRating()] Valid Post Id not found");
						return 0;
					}//++if end
					if( ($fnRatingValue >= 1) && ($fnRatingValue<=10) ){
					    $fnPostRatingKey=$fnPostRatingKey."_".$fnRatingValue;
					    Middatabase::loghandler("[Middatabase] [removePostRating()] Rating Key: ".$fnPostRatingKey);
					}else{
                        Middatabase::loghandler("[Middatabase] [removePostRating()] InValid Rating Value found");
						return 0;
					}//++else end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM USER_RATING_INDEPTH WHERE USER_RATING_INDEPTH.POST_ID="'.$fnPostId.'" AND USER_RATING_INDEPTH.PROFILE_ID="'.$fnProfileId.'" ;';
					$fnRtCode1 = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
    
                    $fnSql = "UPDATE POST_RATING SET ".$fnPostRatingKey."=".$fnPostRatingKey."-1 ";
					$fnSqlConditionArray= NULL;
					$fnSqlConditionArray= array();
					$fnSqlConditionArray["POST_RATING.POST_ID"]     = $fnPostId;
					$fnSqlConditionArray["POST_RATING.POST_ID_OP"]  ="=";
				    Middatabase::loghandler("[Middatabase] [removePostRating()] PostRating Table SQL: ".$fnSql );
				    $this->beginTransaction();
					$fnRtCode2 = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray,$fnSqlParamArray); 
				    if( ( 1 == $fnRtCode1 ) && ( 1 == $fnRtCode2 ) ){
					    $this->commitTransaction();
						Middatabase::loghandler("[Middatabase] [removePostRating()] Successfully removed post rating info");
						return 1;
					}else{
					    $this->rollBackTransaction();
						Middatabase::loghandler("[Middatabase] [removePostRating()] Unable to removed post rating info");
						return 0;
				    }//++else end
    
			   }//++public function removePostRating() end
			   
			   public function removePostRatingV2( $fnPostId ){
				    
				    $fnPostRatingKey="RATING";
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removePostRating()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnPostId ){
						Middatabase::loghandler("[Middatabase] [removePostRatingV2()] Valid Post Id not found");
						return 0;
					}//++if end
					if( ($fnRatingValue >= 1) && ($fnRatingValue<=10) ){
					    $fnPostRatingKey=$fnPostRatingKey."_".$fnRatingValue;
					    Middatabase::loghandler("[Middatabase] [removePostRatingV2()] Rating Key: ".$fnPostRatingKey);
					}else{
                        Middatabase::loghandler("[Middatabase] [removePostRating()] InValid Rating Value found");
						return 0;
					}//++else end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM USER_RATING_INDEPTH WHERE USER_RATING_INDEPTH.POST_ID="'.$fnPostId.'";';
					$fnRtCode1 = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
    
                    $fnSql = 'DELETE FROM POST_RATING WHERE POST_RATING.POST_ID="'.$fnPostId.'";';
					$fnSqlConditionArray= NULL;
					$fnSqlConditionArray= array();
					$fnSqlConditionArray["POST_RATING.POST_ID"]     = $fnPostId;
					$fnSqlConditionArray["POST_RATING.POST_ID_OP"]  ="=";
				    Middatabase::loghandler("[Middatabase] [removePostRatingV2()] PostRating Table SQL: ".$fnSql );
				    $this->beginTransaction();
					$fnRtCode2 = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray,$fnSqlParamArray); 
				    if( ( 1 == $fnRtCode1 ) && ( 1 == $fnRtCode2 ) ){
					    $this->commitTransaction();
						Middatabase::loghandler("[Middatabase] [removePostRatingV2()] Successfully removed post rating info");
						return 1;
					}else{
					    $this->rollBackTransaction();
						Middatabase::loghandler("[Middatabase] [removePostRatingV2()] Unable to removed post rating info");
						return 0;
				    }//++else end
    
			   }//++public function removePostRatingV2() end
			   
			   /*
			   public function removeNPost($fnPostParentId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removeNPost()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnPostParentId ){
						Middatabase::loghandler("[Middatabase] [removeNPost()] Valid Post Parent Id not found");
						return 0;
					}//++if end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM POST_BASIC WHERE POST_BASIC.POST_PARENT="'.$fnPostParentId.'";';
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 

			   }//++public function removeNPost() end
			   */
			   
			   public function removeNPostMedia($fnPostlistStr){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removeNPostMedia()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnPostlistStr ){
						Middatabase::loghandler("[Middatabase] [removeNPostMedia()] Valid Post Id String not found");
						return 0;
					}//++if end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM POST_MEDIA WHERE POST_MEDIA.POST_ID IN ("'.$fnPostlistStr.'");';
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 

			   }//++public function removeNPostMedia() end
			   
			   public function removeNPostRating($fnPostlistStr){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removeNPostRating()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnPostlistStr ){
						Middatabase::loghandler("[Middatabase] [removeNPostRating()] Valid Post Id String not found");
						return 0;
					}//++if end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM POST_RATING WHERE POST_RATING.POST_ID IN ("'.$fnPostlistStr.'");';
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 

			   }//++public function removeNPostRating() end
			   
			   public function removeNPostLikeDisLike($fnPostlistStr){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removeNPostLikeDisLike()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnPostlistStr ){
						Middatabase::loghandler("[Middatabase] [removeNPostLikeDisLike()] Valid Post Id String not found");
						return 0;
					}//++if end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM POST_LIKE_DISLIKE WHERE POST_LIKE_DISLIKE.POST_ID IN ("'.$fnPostlistStr.'");';
					$fnRtCode1 = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
                    
                    $fnSql = 'DELETE FROM USER_GIVEN_LIKE_DISLIKE WHERE USER_GIVEN_LIKE_DISLIKE.POST_ID IN ("'.$fnPostlistStr.'");';
					$fnSqlConditionArray= NULL;
					$fnSqlConditionArray= array();
					$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.POST_ID"]     = $fnPostId;
					$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.POST_ID_OP"]  ="=";
				    Middatabase::loghandler("[Middatabase] [removeNPostLikeDisLike()] PostRating Table SQL: ".$fnSql );
				    $this->beginTransaction();
					$fnRtCode2 = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray,$fnSqlParamArray); 
				    if( ( 1 == $fnRtCode1 ) && ( 1 == $fnRtCode2 ) ){
					    $this->commitTransaction();
						Middatabase::loghandler("[Middatabase] [removeNPostLikeDisLike()] Successfully removed post like/dislike info");
						return 1;
					}else{
					    $this->rollBackTransaction();
						Middatabase::loghandler("[Middatabase] [removeNPostLikeDisLike()] Unable to removed post like/dislike info");
						return 0;
				    }//++else end
				    
			   }//++public function removePostLikeDisLike() end
			   
			   public function removeNPost($fnPostlistStr){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removeNPost()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnPostlistStr ){
						Middatabase::loghandler("[Middatabase] [removeNPost()] Valid Post Id String not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'UPDATE POST_BASIC SET POST_BASIC.POST_STATUS="POST_STATUS_REMOVED" WHERE POST_BASIC.POST_ID IN ('.$fnPostlistStr.');';
					$fnRtCode1 = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
                    
			   }//++public function removeNPost() end
			   
			   public function updateParentPostMediaInfo($fnPostId,$fnPostAuthorId,$fnNumberOfImages,$fnNumberOfVideos){ 
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateParentPostMediaInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode =0;
					//++Step1: Add User Basic Info
					$fnFirstCond=false;
					$fnSql = NULL;
					$fnSql = "UPDATE POST_BASIC SET";
					if( null == $fnPostId ){
					    Middatabase::loghandler("[Middatabase] [updateParentPostMediaInfo()] Invalid Post Id Found");
						return 0;
					}//++if end
					
					Middatabase::loghandler("[Middatabase] [updateParentPostMediaInfo()] Number Of Images: ".$fnNumberOfImages );
					Middatabase::loghandler("[Middatabase] [updateParentPostMediaInfo()] Number Of Videos: ".$fnNumberOfVideos );
					
					if( $fnNumberOfImages >=0 ){
					    $fnSql = $fnSql." POST_NUMBEROFIMAGES='".$fnNumberOfImages."'";
    				    if( 0 == $fnNumberOfImages ){
    				        $fnSql = $fnSql." ,POST_HAVEANYIMAGES='0' ";
    				    }//if end
    				    $fnFirstCond=true;
				    }//if end
				    
				    if( $fnNumberOfVideos >=0 ){
				        if( false == $fnFirstCond){
				            $fnSql = $fnSql."  POST_NUMBEROFVIDEOS='".$fnNumberOfVideos."'";
				        }else{
				            $fnSql = $fnSql." ,POST_NUMBEROFVIDEOS='".$fnNumberOfVideos."'";
				        }
				        if( 0 == $fnNumberOfVideos ){
				            $fnSql = $fnSql." , POST_HAVEANYVIDEOS='0' ";
				        }//if end
				        
				    }//if end
				    
				    $fnSql = $fnSql." WHERE POST_BASIC.POST_AUTHOR='".$fnPostAuthorId."' AND POST_BASIC.POST_ID='".$fnPostId."'";
					Middatabase::loghandler("[Middatabase] [updateParentPostMediaInfo()] SQL: ".$fnSql );
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateParentPostMediaInfo()] Successfully updated parent post media status");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateParentPostMediaInfo()] Unable to update parent post media status");
						return 0;
					}//else end
					
			   }//++public function updateParentPostMediaInfo() end
	           
	           //++Create New Post Rating Entry
			   public function createUserEducationInfo($fnProfileId,$fnEducationInfoArray){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [createUserEducationInfo()] Valid Database Connection Not found");
							return 0;
						}//++if end
					    $str           =  $fnProfileId.$fnEducationInfoArray["institutename"].$fnEducationInfoArray["institutetype"].date("Y-m-d").date("H:i:s");
						$fnEducationID = "ED".CreateId::getIDType1(6,$str);
						Middatabase::loghandler("[Middatabase] [createUserEducationInfo()] ProfileID  :  ".$fnProfileId   );
				        Middatabase::loghandler("[Middatabase] [createUserEducationInfo()] EducationID: " .$fnEducationID );
						$fnSql = NULL;
						$fnSql = $this->SQL_List["USER_EDUCATION_INSERT_SQL"];
						$fnSqlParamArray = NULL;
						$fnSqlParamArray = array();
						$fnSqlParamArray["PROFILE_ID"]             = $fnProfileId;
						$fnSqlParamArray["EDUCATION_ID"]           = $fnEducationID;
						$fnSqlParamArray["INSTITUTE_NAME"]         = $fnEducationInfoArray["institutename"];
						$fnSqlParamArray["INSTITUTE_TYPE"]         = $fnEducationInfoArray["institutetype"];
						$fnSqlParamArray["DEGREE_TYPE"]            = $fnEducationInfoArray["degreetype"];
						$fnSqlParamArray["DEGREE"]                 = $fnEducationInfoArray["degreename"];
						$fnSqlParamArray["SUBJECT"]                = $fnEducationInfoArray["subjectname"];
						$fnSqlParamArray["START_DATE"]             = $fnEducationInfoArray["fromyear"]."-".$fnEducationInfoArray["frommonth"]."-00";
						$fnSqlParamArray["END_DATE"]               = $fnEducationInfoArray["toyear"]."-".$fnEducationInfoArray["tomonth"]."-00";
						$fnSqlParamArray["EDUCATION_INFO_PRIVACY"] = $fnEducationInfoArray["privacy"];
						$fnSqlParamArray["CREATION_DATE"]          = date("Y-m-d");
						$fnSqlParamArray["CREATION_TIME"]          = date("H:i:s");
						Middatabase::loghandler("[Middatabase] [createUserEducationInfo()] SQL: ".$fnSql );
						$this->beginTransaction();
						$fnSqlRtCode =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
						if( 1 == $fnSqlRtCode){
							Middatabase::loghandler("[Middatabase] [createUserEducationInfo()] User Education Info create success" );
							$this->commitTransaction();
							return $fnEducationID;
						}else{
							Middatabase::loghandler("[Middatabase] [createUserEducationInfo()] User Education Info create failed" );
							$this->rollBackTransaction();
							return null;
						}//++else end
						
						
			   }//++function createUserEducationInfo() end
			    
			   public function getUserEducationInfo($fnProfileId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getUserEducationInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [getUserEducationInfo()] Valid Parent Post Id not found");
						return 0;
					}//++if end
					
					$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT USER_EDUCATIONAL_INFO.PROFILE_ID,
                            		 USER_EDUCATIONAL_INFO.EDUCATION_ID,
                            		 USER_EDUCATIONAL_INFO.INSTITUTE_NAME,
                                     USER_EDUCATIONAL_INFO.INSTITUTE_TYPE,
                                     USER_EDUCATIONAL_INFO.DEGREE_TYPE,
                                     USER_EDUCATIONAL_INFO.DEGREE,
                                     USER_EDUCATIONAL_INFO.SUBJECT,
                                     USER_EDUCATIONAL_INFO.START_DATE,
                                     USER_EDUCATIONAL_INFO.END_DATE,
                                     USER_EDUCATIONAL_INFO.EDUCATION_INFO_PRIVACY
                            FROM  USER_EDUCATIONAL_INFO
                            WHERE USER_EDUCATIONAL_INFO.PROFILE_ID="'.$fnProfileId.'" ORDER BY USER_EDUCATIONAL_INFO.CREATION_DATE DESC;';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getUserEducationInfo() end
			   
			   public function removeEducationInfo($fnProfileId,$fnEducationId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removeEducationInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [removeEducationInfo()] Valid Profile Id not found");
						return 0;
					}//++if end
					if( NULL == $fnEducationId ){
						Middatabase::loghandler("[Middatabase] [removeEducationInfo()] Valid Education Id not found");
						return 0;
					}//++if end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM USER_EDUCATIONAL_INFO WHERE USER_EDUCATIONAL_INFO.PROFILE_ID="'.$fnProfileId.'" AND USER_EDUCATIONAL_INFO.EDUCATION_ID="'.$fnEducationId.'";';
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 

			   }//++public function removeEducationInfo() end
			   
			   public function updateEducationInfo($fnProfileId,$fnEducationId,$fnEducationInfoArray){ 
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateEducationInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [updateEducationInfo()] Valid Profile Id not found");
						return 0;
					}//++if end
					if( NULL == $fnEducationId ){
						Middatabase::loghandler("[Middatabase] [updateEducationInfo()] Valid Education Id not found");
						return 0;
					}//++if end
					$fnRtCode =0;
					//++Step1: Update Education Info
					$fnFirstCond=false;
					$fnSql = NULL;
					$fnStartDate = $fnEducationInfoArray["fromyear"]."-".$fnEducationInfoArray["frommonth"]."-00";
					$fnEndDate   = $fnEducationInfoArray["toyear"]."-".$fnEducationInfoArray["tomonth"]."-00";
					$fnSql = "UPDATE USER_EDUCATIONAL_INFO SET";
					$fnSql = $fnSql."   USER_EDUCATIONAL_INFO.INSTITUTE_NAME='".$fnEducationInfoArray["institutename"]."'";
					$fnSql = $fnSql."  ,USER_EDUCATIONAL_INFO.INSTITUTE_TYPE ='".$fnEducationInfoArray["institutetype"]."'";
					$fnSql = $fnSql."  ,USER_EDUCATIONAL_INFO.DEGREE_TYPE ='".$fnEducationInfoArray["degreetype"]."'";
					$fnSql = $fnSql."  ,USER_EDUCATIONAL_INFO.DEGREE ='".$fnEducationInfoArray["degreename"]."'";
					$fnSql = $fnSql."  ,USER_EDUCATIONAL_INFO.SUBJECT ='".$fnEducationInfoArray["subjectname"]."'";
					$fnSql = $fnSql."  ,USER_EDUCATIONAL_INFO.START_DATE ='".$fnStartDate."'";
					$fnSql = $fnSql."  ,USER_EDUCATIONAL_INFO.END_DATE ='".$fnEndDate."'";
					$fnSql = $fnSql."  ,USER_EDUCATIONAL_INFO.EDUCATION_INFO_PRIVACY='".$fnEducationInfoArray["privacy"]."'";
					$fnSql = $fnSql." WHERE USER_EDUCATIONAL_INFO.PROFILE_ID='".$fnProfileId."' AND USER_EDUCATIONAL_INFO.EDUCATION_ID='".$fnEducationId."'";
					Middatabase::loghandler("[Middatabase] [updateEducationInfo()] SQL: ".$fnSql );
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateEducationInfo()] Successfully updated education info ");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateEducationInfo()] Unable to update education info ");
						return 0;
					}//else end
					
			   }//++public function updateEducationInfo() end
			   
			   //++Create New Employment Entry
			   public function createUserEmploymentInfo($fnProfileId,$fnEmploymentInfoArray){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [createUserEmploymentInfo()] Valid Database Connection Not found");
							return 0;
						}//++if end
					    $str            =  $fnProfileId.$fnEducationInfoArray["companyname"].$fnEducationInfoArray["jobdesignation"].date("Y-m-d").date("H:i:s");
						$fnEmploymentID = "EMP".CreateId::getIDType1(6,$str);
						Middatabase::loghandler("[Middatabase] [createUserEmploymentInfo()] ProfileID  :  ".$fnProfileId    );
				        Middatabase::loghandler("[Middatabase] [createUserEmploymentInfo()] EmploymentID: ".$fnEmploymentID );
						$fnSql = NULL;
						$fnSql = $this->SQL_List["USER_EMPLOYMENT_INSERT_SQL"];
						$fnSqlParamArray = NULL;
						$fnSqlParamArray = array();
						$fnSqlParamArray["PROFILE_ID"]              = $fnProfileId;
						$fnSqlParamArray["EMPLOYMENT_ID"]           = $fnEmploymentID;
						$fnSqlParamArray["COMPANY_NAME"]            = $fnEmploymentInfoArray["companyname"];
						$fnSqlParamArray["DESIGNATION"]             = $fnEmploymentInfoArray["jobdesignation"];
						$fnSqlParamArray["ROLES"]                   = $fnEmploymentInfoArray["jobdescription"];
					    $fnSqlParamArray["START_DATE"]              = $fnEmploymentInfoArray["fromyear"]."-".$fnEmploymentInfoArray["frommonth"]."-00";
						$fnSqlParamArray["END_DATE"]                = $fnEmploymentInfoArray["toyear"]."-".$fnEmploymentInfoArray["tomonth"]."-00";
						$fnSqlParamArray["EMPLOYMENT_INFO_PRIVACY"] = $fnEmploymentInfoArray["privacy"];
						$fnSqlParamArray["CREATION_DATE"]           = date("Y-m-d");
						$fnSqlParamArray["CREATION_TIME"]           = date("H:i:s");
						Middatabase::loghandler("[Middatabase] [createUserEmploymentInfo()] SQL: ".$fnSql );
						$this->beginTransaction();
						$fnSqlRtCode =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
						if( 1 == $fnSqlRtCode){
							Middatabase::loghandler("[Middatabase] [createUserEmploymentInfo()] User Employment Info create success" );
							$this->commitTransaction();
							return $fnEmploymentID;
						}else{
							Middatabase::loghandler("[Middatabase] [createUserEmploymentInfo()] User Employment Info create failed" );
							$this->rollBackTransaction();
							return null;
						}//++else end
						
						
			    }//++function createUserEmploymentInfo() end
			   
			   public function getUserEmploymentInfo($fnProfileId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getUserEmploymentInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [getUserEmploymentInfo()] Valid Parent Post Id not found");
						return 0;
					}//++if end
					
					$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT USER_EMPLOYMENT_INFO.PROFILE_ID,
                            		 USER_EMPLOYMENT_INFO.EMPLOYMENT_ID,
                            		 USER_EMPLOYMENT_INFO.COMPANY_NAME,
                                     USER_EMPLOYMENT_INFO.DESIGNATION,
                                     USER_EMPLOYMENT_INFO.ROLES,
                                     USER_EMPLOYMENT_INFO.START_DATE,
                                     USER_EMPLOYMENT_INFO.END_DATE,
                                     USER_EMPLOYMENT_INFO.EMPLOYMENT_INFO_PRIVACY
                            FROM  USER_EMPLOYMENT_INFO
                            WHERE USER_EMPLOYMENT_INFO.PROFILE_ID="'.$fnProfileId.'" ORDER BY USER_EMPLOYMENT_INFO.CREATION_DATE DESC;';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getUserEducationInfo() end
			   
			   public function updateEmploymentInfo($fnProfileId,$fnEmploymentId,$fnEmploymentInfoArray){ 
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateEmploymentInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [updateEmploymentInfo()] Valid Profile Id not found");
						return 0;
					}//++if end
					if( NULL == $fnEmploymentId ){
						Middatabase::loghandler("[Middatabase] [updateEmploymentInfo()] Valid Employment Id not found");
						return 0;
					}//++if end
					$fnRtCode =0;
					//++Step1: Update Education Info
					$fnFirstCond=false;
					$fnSql = NULL;
					$fnStartDate = $fnEmploymentInfoArray["fromyear"]."-".$fnEmploymentInfoArray["frommonth"]."-00";
					$fnEndDate   = $fnEmploymentInfoArray["toyear"]."-".$fnEmploymentInfoArray["tomonth"]."-00";
					$fnSql = "UPDATE USER_EMPLOYMENT_INFO SET";
					$fnSql = $fnSql."   USER_EMPLOYMENT_INFO.COMPANY_NAME='".$fnEmploymentInfoArray["companyname"]."'";
					$fnSql = $fnSql."  ,USER_EMPLOYMENT_INFO.DESIGNATION ='".$fnEmploymentInfoArray["jobdesignation"]."'";
					$fnSql = $fnSql."  ,USER_EMPLOYMENT_INFO.ROLES ='".$fnEmploymentInfoArray["jobdescription"]."'";
					$fnSql = $fnSql."  ,USER_EMPLOYMENT_INFO.START_DATE ='".$fnStartDate."'";
					$fnSql = $fnSql."  ,USER_EMPLOYMENT_INFO.END_DATE ='".$fnEndDate."'";
					$fnSql = $fnSql."  ,USER_EMPLOYMENT_INFO.EMPLOYMENT_INFO_PRIVACY='".$fnEmploymentInfoArray["privacy"]."'";
					$fnSql = $fnSql." WHERE USER_EMPLOYMENT_INFO.PROFILE_ID='".$fnProfileId."' AND USER_EMPLOYMENT_INFO.EMPLOYMENT_ID='".$fnEmploymentId."'";
					Middatabase::loghandler("[Middatabase] [updateEmploymentInfo()] SQL: ".$fnSql );
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateEmploymentInfo()] Successfully updated employment info");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateEmploymentInfo()] Unable to update update employment info");
						return 0;
					}//else end
					
			   }//++public function updateEmploymentInfo() end
	           
	           public function removeEmploymentInfo($fnProfileId,$fnEmploymentId){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removeEmploymentInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [removeEmploymentInfo()] Valid Profile Id not found");
						return 0;
					}//++if end
					if( NULL == $fnEmploymentId ){
						Middatabase::loghandler("[Middatabase] [removeEmploymentInfo()] Valid Employment Id not found");
						return 0;
					}//++if end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM USER_EMPLOYMENT_INFO WHERE USER_EMPLOYMENT_INFO.PROFILE_ID="'.$fnProfileId.'" AND USER_EMPLOYMENT_INFO.EMPLOYMENT_ID="'.$fnEmploymentId.'";';
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 

			   }//++public function removeEmploymentInfo() end
			   
			   public function getProfileIdInfo($fnUserLoginId){
				    if( NULL == $this->GenDBOperationObj ){
					    Middatabase::loghandler("[Middatabase] [getProfileIdInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					Middatabase::loghandler("[Middatabase] [getProfileIdInfo()] Valid Database Connection found");
				   	$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT USER_BASIC_INFO.PROFILE_ID,
                            		 USER_BASIC_INFO.USER_FIRST_NAME,
                            		 USER_BASIC_INFO.USER_LAST_NAME,
                                     USER_BASIC_INFO.USER_EMAIL_ID,
                                     USER_BASIC_INFO.USER_MOBILE_ID
                            FROM  USER_BASIC_INFO
                            WHERE USER_BASIC_INFO.USER_EMAIL_ID="'.$fnUserLoginId.'" OR USER_BASIC_INFO.USER_MOBILE_ID="'.$fnUserLoginId.'";';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			   }//++public function getProfileIdInfo() end
			   
			   public function getProfileOTPAuthInfo($fnUserLoginId,$fnUserAuthKey){
				    if( NULL == $this->GenDBOperationObj ){
					    Middatabase::loghandler("[Middatabase] [getProfileIdInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					Middatabase::loghandler("[Middatabase] [getProfileIdInfo()] Valid Database Connection found");
				   	$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT FORGOT_PASSWORD.USER_LOGIN_ID,
                            		 FORGOT_PASSWORD.PROFILE_ID,
                            		 FORGOT_PASSWORD.AUTH_KEY,
                                     FORGOT_PASSWORD.CREATION_DATE,
                                     FORGOT_PASSWORD.CREATION_TIME
                            FROM  FORGOT_PASSWORD
                            WHERE FORGOT_PASSWORD.USER_LOGIN_ID="'.$fnUserLoginId.'" OR FORGOT_PASSWORD.AUTH_KEY="'.$fnUserAuthKey.'";';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			   }//++public function getProfileOTPAuthInfo() end
			   
			   public function setNewLoginPasswordInfo($fnUserLoginId,$fnUserNewPwd){
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setNewLoginInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode=0;
					$fnSql = NULL;
					$fnSql = "UPDATE USER_LOGIN_INFO SET USER_PWD='".$fnUserNewPwd."'";
					$fnSql = $fnSql." WHERE USER_LOGIN_ID='".$fnUserLoginId."'";
					Middatabase::loghandler("[Middatabase] [setNewLoginInfo()] SQL: ".$fnSql );
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setNewLoginPasswordInfo()] Successfully updated profile new password");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setNewLoginPasswordInfo()] Unable to update profile new password");
						return 0;
					}//else end
			   }//++public function setNewLoginPasswordInfo() end
			   
			   public function getTotalSinglePostOfaProfile($fnProfileId){
				    if( NULL == $this->GenDBOperationObj ){
					    Middatabase::loghandler("[Middatabase] [getTotalSinglePostOfaProfile()] Valid Database Connection Not found");
						return 0;
					}//++if end
					Middatabase::loghandler("[Middatabase] [getTotalSinglePostOfaProfile()] Valid Database Connection found");
				   	$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT COUNT(POST_BASIC.POST_ID)
                            FROM  POST_BASIC
                            WHERE POST_BASIC.POST_AUTHOR="'.$fnProfileId.'" AND POST_BASIC.POST_STATUS="POST_STATUS_ACTIVE" AND POST_BASIC.POST_PARENT="NULL" AND POST_BASIC.POST_HAVEANYCHILD=0;';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			   }//++public function getTotalSinglePostOfaProfile() end
			   
			   public function getTotalImagePostOfaProfile($fnProfileId){
				    if( NULL == $this->GenDBOperationObj ){
					    Middatabase::loghandler("[Middatabase] [getTotalImagePostOfaProfile()] Valid Database Connection Not found");
						return 0;
					}//++if end
					Middatabase::loghandler("[Middatabase] [getTotalImagePostOfaProfile()] Valid Database Connection found");
				   	$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT COUNT(POST_BASIC.POST_ID)
                            FROM  POST_BASIC
                            WHERE POST_BASIC.POST_AUTHOR="'.$fnProfileId.'" AND POST_BASIC.POST_STATUS="POST_STATUS_ACTIVE" AND POST_BASIC.POST_PARENT="NULL" AND POST_BASIC.POST_HAVEANYCHILD=0 AND POST_BASIC.POST_HAVEANYIMAGES=1;';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			   }//++public function getTotalImagePostOfaProfile() end
			   
			   public function getCountryFlagOfaProfile($fnProfileId){
				    if( NULL == $this->GenDBOperationObj ){
					    Middatabase::loghandler("[Middatabase] [getCountryFlagOfaProfile()] Valid Database Connection Not found");
						return 0;
					}//++if end
					Middatabase::loghandler("[Middatabase] [getCountryFlagOfaProfile()] Valid Database Connection found");
				   	$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT USER_BASIC_INFO_INDEPTH.PROFILE_ID,
					                 COUNTRY_FLAG_INFORMATION.COUNTRY_NAME,
					                 COUNTRY_FLAG_INFORMATION.COUNTRY_FLAG_IMAGE
                            FROM  USER_BASIC_INFO_INDEPTH
                            INNER JOIN COUNTRY_FLAG_INFORMATION ON USER_BASIC_INFO_INDEPTH.USER_COUNTRY=COUNTRY_FLAG_INFORMATION.COUNTRY_NAME
                            WHERE USER_BASIC_INFO_INDEPTH.PROFILE_ID="'.$fnProfileId.'";';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			   }//++public function getCountryFlagOfaProfile() end
			   
			   public function getCountryFlagOfaCommunityProfile($fnProfileId){
				    if( NULL == $this->GenDBOperationObj ){
					    Middatabase::loghandler("[Middatabase] [getCountryFlagOfaCommunityProfile()] Valid Database Connection Not found");
						return 0;
					}//++if end
					Middatabase::loghandler("[Middatabase] [getCountryFlagOfaCommunityProfile()] Valid Database Connection found");
				   	$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PROFILE_ID,
					                 COUNTRY_FLAG_INFORMATION.COUNTRY_NAME,
					                 COUNTRY_FLAG_INFORMATION.COUNTRY_FLAG_IMAGE
                            FROM  COMMUNITY_BASIC_INFO_INDEPTH
                            INNER JOIN COUNTRY_FLAG_INFORMATION ON COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_COUNTRY=COUNTRY_FLAG_INFORMATION.COUNTRY_NAME
                            WHERE COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PROFILE_ID="'.$fnProfileId.'";';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			   }//++public function getCountryFlagOfaCommunityProfile() end
			   
			   public function getDetailedInfoOfProfile($fnProfileId){
				    if( NULL == $this->GenDBOperationObj ){
					    Middatabase::loghandler("[Middatabase] [getDetailedInfoOfProfile()] Valid Database Connection Not found");
						return 0;
					}//++if end
					Middatabase::loghandler("[Middatabase] [getDetailedInfoOfProfile()] Valid Database Connection found");
				   	$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT USER_BASIC_INFO_INDEPTH.PROFILE_ID,
					                 USER_BASIC_INFO_INDEPTH.PROFILE_DESC,
					                 USER_BASIC_INFO_INDEPTH.USER_GENDER,
					                 USER_BASIC_INFO_INDEPTH.USER_BIRTHDAY,
					                 USER_BASIC_INFO_INDEPTH.USER_MARTIAL_STATUS,
					                 USER_BASIC_INFO_INDEPTH.USER_SEXUAL_ORIENTATION,
					                 USER_BASIC_INFO_INDEPTH.USER_OCCUPATION,
					                 USER_BASIC_INFO_INDEPTH.USER_COUNTRY,
					                 USER_BASIC_INFO_INDEPTH.USER_PLACE,
					                 USER_BASIC_INFO.USER_FIRST_NAME,
					                 USER_BASIC_INFO.USER_LAST_NAME,
					                 USER_BASIC_INFO.USER_EMAIL_ID,
					                 USER_BASIC_INFO.USER_MOBILE_ID,
					                 USER_BASIC_INFO.CREATION_DATE
                            FROM  USER_BASIC_INFO_INDEPTH
                            INNER JOIN USER_BASIC_INFO ON USER_BASIC_INFO_INDEPTH.PROFILE_ID=USER_BASIC_INFO.PROFILE_ID
                            WHERE USER_BASIC_INFO_INDEPTH.PROFILE_ID="'.$fnProfileId.'";';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
			   }//++public function getDetailedInfoOfProfile() end
			   
			   //++All Comments of Post Related DB query
			   public function getPostCommentsBasic($fnPostID,$fnOffSet){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getPostCommentsBasic()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnPostID ){
						Middatabase::loghandler("[Middatabase] [getPostCommentsBasic()] Valid Post ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
					if( NULL != $fnPostID ){
						$sqlCond =" POST_COMMENT.POST_ID='".$fnPostID."' ORDER BY POST_COMMENT.CREATION_DATE ASC,POST_COMMENT.CREATION_TIME ASC LIMIT 20 OFFSET ".$fnOffSet;
					}//++if end
					
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = $this->SQL_List["POST_COMMENT_SELECT_SQL"];
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getPostCommentsBasic() end
			   
			   public function getPostCommentsBasicV2($fnPostID,$fnOffSet){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getPostCommentsBasicV2()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnPostID ){
						Middatabase::loghandler("[Middatabase] [getPostCommentsBasicV2()] Valid Post ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
					if( NULL != $fnPostID ){
						$sqlCond =" POST_COMMENT.POST_ID='".$fnPostID."' ORDER BY POST_COMMENT.CREATION_DATE ASC, POST_COMMENT.CREATION_TIME ASC LIMIT 20 OFFSET ".$fnOffSet;
					}//++if end
					
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = $this->SQL_List["POST_COMMENT_SELECT_SQL"];
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getPostCommentsBasicV2() end
			   
			   public function getPostCommentsLikeAndDisLikeInfo($fnCommentID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getPostCommentsLikeAndDisLikeInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnCommentID ){
						Middatabase::loghandler("[Middatabase] [getPostCommentsLikeAndDisLikeInfo()] Valid Comment ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
					if( NULL != $fnCommentID ){
						$sqlCond =" POST_COMMENT_LIKE_DISLIKE.COMMENT_ID='".$fnCommentID."'";
					}//++if end
					
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = $this->SQL_List["POST_COMMENT_LIKE_DISLIKE_SELECT_SQL"];
					$fnSql = $fnSql." where ".$sqlCond;
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getPostCommentsLikeAndDisLikeInfo() end
			   
			   public function getUserPostCommentsLikeAndDisLikeInfo($fnCommentID){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getUserPostCommentsLikeAndDisLikeInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnCommentID ){
						Middatabase::loghandler("[Middatabase] [getUserPostCommentsLikeAndDisLikeInfo()] Valid Comment ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
					if( NULL != $fnCommentID ){
						$sqlCond =" USER_GIVEN_POST_COMMENT_LIKE_DISLIKE.COMMENT_ID='".$fnCommentID."'";
					}//++if end
					
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					$fnSql = $this->SQL_List["USER_POST_COMMENT_LIKE_DISLIKE_SELECT_SQL"];
					$fnSql = $fnSql." where ".$sqlCond;
					Middatabase::loghandler("[Middatabase] [getUserPostCommentsLikeAndDisLikeInfo()] SQL: ".$fnSql );
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getUserPostCommentsLikeAndDisLikeInfo() end
			   
			   public function setPostCommentsBasic( $fnProfileID=NULL,$fnPostID=NULL,$fnCommentDataArray ){
						
						$rtcodeArray                   = array();
						$rtcodeArray["rtcode"]         = "0";
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [setPostComments()] Valid Database Connection Not found");
							return $rtcodeArray;
						}//++if end
						$str = $fnProfileID.$fnPostID.date("Y-m-d").date("H:i:s");
						$fnCommentId = "CM".CreateId::getIDType1(6,$str);
						Middatabase::loghandler("[Middatabase] [setPostCommentsBasic()] CommentID:  ".$fnCommentId );
						Middatabase::loghandler("[Middatabase] [setPostCommentsBasic()] ProfileID:  ".$fnProfileID );
						Middatabase::loghandler("[Middatabase] [setPostCommentsBasic()] PostID: ".$fnPostID );
						Middatabase::loghandler("[Middatabase] [setPostCommentsBasic()] Comment Statement: ".$fnCommentStatement );
						$fnSql                                      = NULL;
						$fnSql                                      = $this->SQL_List["POST_COMMENT_INSERT_SQL"];
						$fnSqlParamArray                            = NULL;
						$fnSqlParamArray                            = array();
						$fnSqlParamArray["COMMENT_ID"]              = $fnCommentId;
						$fnSqlParamArray["PROFILE_ID"]              = $fnProfileID;
						$fnSqlParamArray["POST_ID"]                 = $fnPostID;
						$fnSqlParamArray["COMMENT_STATUS"]          = $fnCommentDataArray["COMMENT_STATUS"];
						$fnSqlParamArray["COMMENT_PARENT"]          = $fnCommentDataArray["COMMENT_PARENT"];
                        $fnSqlParamArray["COMMENT_HAVEANYCHILD"]    = $fnCommentDataArray["COMMENT_HAVEANYCHILD"];
                        $fnSqlParamArray["COMMENT_HAVEANYIMAGES"]   = $fnCommentDataArray["COMMENT_HAVEANYIMAGES"];
                        $fnSqlParamArray["COMMENT_NUMBEROFIMAGES"]  = $fnCommentDataArray["COMMENT_NUMBEROFIMAGES"];
                        $fnSqlParamArray["COMMENT_HAVEANYVIDEOS"]   = $fnCommentDataArray["COMMENT_HAVEANYVIDEOS"];
                        $fnSqlParamArray["COMMENT_NUMBEROFVIDEOS"]  = $fnCommentDataArray["COMMENT_NUMBEROFVIDEOS"];
						$fnSqlParamArray["COMMENT_STATEMENT"]       = $fnCommentDataArray["COMMENT_STATEMENT"];
						$fnSqlParamArray["CREATION_DATE"]           = date("Y-m-d");
						$fnSqlParamArray["CREATION_TIME"]           = date("H:i:s");
						Middatabase::loghandler("[Middatabase] [setPostCommentsBasic()] SQL: ".$fnSql );
						$this->beginTransaction();
						$fnSqlRtCode =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
						if( 1 == $fnSqlRtCode){
							Middatabase::loghandler("[Middatabase] [setPostCommentsBasic()] Post Comment create success" );
                            $this->commitTransaction();
                            $rtcodeArray["rtcode"]         = "1"; 
                            $rtcodeArray["commentid"]      = $fnCommentId;
                            $rtcodeArray["commenttext"]    = $fnSqlParamArray["COMMENT_STATEMENT"];
                            $rtcodeArray["commentdate"]    = $fnSqlParamArray["CREATION_DATE"];
                            $rtcodeArray["commenttime"]    = $fnSqlParamArray["CREATION_TIME"];
						}else{
							Middatabase::loghandler("[Middatabase] [setPostCommentsBasic()] Post Comment create failed" );
							$this->rollBackTransaction();
						}//++else end
						return $rtcodeArray;
						
			   }//++function setPostCommentsBasic() end
			   
			   public function setPostCommentsLikeDislikeBasic( $fnCommentID=NULL ){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [setPostCommentsLikeDislikeBasic()] Valid Database Connection Not found");
							return 0;
						}//++if end
						Middatabase::loghandler("[Middatabase] [setPostCommentsLikeDislikeBasic()] CommentID:  ".$fnCommentID );
						$fnSql                                      = NULL;
						$fnSql                                      = $this->SQL_List["POST_COMMENT_LIKE_DISLIKE_INSERT_SQL"];
						$fnSqlParamArray                            = NULL;
						$fnSqlParamArray                            = array();
						$fnSqlParamArray["COMMENT_ID"]              = $fnCommentID;
						$fnSqlParamArray["TOTAL_LIKES"]             = "0";
						$fnSqlParamArray["TOTAL_DISLIKE"]           = "0";
						$fnSqlParamArray["CREATION_DATE"]           = date("Y-m-d");
						$fnSqlParamArray["CREATION_TIME"]           = date("H:i:s");
						Middatabase::loghandler("[Middatabase] [setPostCommentsLikeDislikeBasic()] SQL: ".$fnSql );
						$this->beginTransaction();
						$fnSqlRtCode =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
						if( 1 == $fnSqlRtCode){
							Middatabase::loghandler("[Middatabase] [setPostCommentsLikeDislikeBasic()] Post Comment Total Like/Dislike create success" );
                            $this->commitTransaction();
						}else{
							Middatabase::loghandler("[Middatabase] [setPostCommentsLikeDislikeBasic()] Post Comment Total Like/Dislike create failed" );
							$this->rollBackTransaction();
						}//++else end
						return $fnSqlRtCode;
						
			   }//++function setPostCommentsLikeDislikeBasic() end
               
               //++All Like&Dislike of Post Related DB query
               public function getUserGivenPostLikeDisLikeTableInfo($fnProfileId=NULL,$fnPostId=NULL){
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getUserGivenPostLikeDisLikeTableInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnSql = $this->SQL_List["POST_LIKEDISLIKE_IN_USER_TABLE_SELECT_SQL"];
					//++Add Some where condition this checking code will be added with where cluase
					$fnSqlConditionArray= array();
					$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.PROFILE_ID"]    = $fnProfileId;
					$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.PROFILE_ID_OP"] ="=";
					$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.POST_ID"]       = $fnPostId;
					$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.POST_ID_OP"]    ="=";
					$fnSqlConditionType ="AND";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType);
				}//++function getUserGivenPostLikeDisLikeTableInfo() end
				
			   public function getPostLikeDisLikeTableInfo($fnPostId=NULL){
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getPostLikeDisLikeTableInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnSql = $this->SQL_List["POST_LIKEDISLIKE_TABLE_SELECT_SQL"];
					//++Add Some where condition this checking code will be added with where cluase
					$fnSqlConditionArray= array();
					$fnSqlConditionArray["POST_LIKE_DISLIKE.POST_ID"]       = $fnPostId;
					$fnSqlConditionArray["POST_LIKE_DISLIKE.POST_ID_OP"]    ="=";
					$fnSqlConditionType ="AND";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType);
			    }//++function getPostLikeDisLikeTableInfo() end
               
               public function setPostLikeDisLikeInfoByPostID($fnSql=NULL,$fnPostId=NULL){
					
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setPostLikeDisLikeInfoByPostID()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnSql ){
						Middatabase::loghandler("[Middatabase] [setPostLikeDisLikeInfoByPostID()] Valid SQL Not found");
						return 0;
					}//++if end
					$fnSqlConditionArray= array();
					$fnSqlConditionArray["POST_LIKE_DISLIKE.POST_ID"]    = $fnPostId;
					$fnSqlConditionArray["POST_LIKE_DISLIKE.POST_ID_OP"] ="=";
					Middatabase::loghandler("[Middatabase] [setPostLikeDisLikeInfoByPostID()] POST_LIKE_DISLIKE Table SQL: ".$fnSql );
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
			   
				}//++function setPostLikeDisLikeInfoByPostID() end
				
               public function setPostLikeDislikeByUser($fnProfileId=NULL,$fnPostId=NULL,$fnLikes=1){ //if $fnLikes=1 then Likes and if $fnLikes=0 then dislike
					
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Valid Database Connection Not found");
						return 0;
					}//++if end

					$fnRtCode1 =0;
					$fnRtCode2=0;
					$fnRtCode3 = 0;//++By Default Failed
					$fnSql = NULL;
					$fnSqlParamArray = NULL;
					$fnSqlConditionArray= NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnLikeValue=0;
					$fnDisLikeValue=0;
					$fnAlreadyUserPostLikeDisLikeFlag=false;
					
					$fnLikeRemoveFlag=false;
					$fnDisLikeRemoveFlag=false;
					
					$fnLikeToDislikeFlag=false;
					$fnDislikeToLikeFlag=false;

					//++Now Start Database Transaction 
					$this->beginTransaction();

					//++Found Previuos Any Entry of User Post Entry then check if it same or new value entry
					//++if it same then return otherwise decrement one from previous Like/Dislike value from post Like/DisLike table

					//++Step 1: Find Any Previous Post Like/DisLike Entry Found
					$rtUserPostLikeArray = NULL;
					$rtUserPostLikeArray = $this->getUserGivenPostLikeDisLikeTableInfo($fnProfileId,$fnPostId);
					
					$rtPostTotalLikeDislikeArray = NULL;
					$rtPostTotalLikeDislikeArray = $this->getPostLikeDisLikeTableInfo($fnPostId);
					$TempPostTotalLikeDislikeArray = NULL;
					$totalLike = NULL;
					$totalDislike=NULL;
					
					//++Check Only product like/dislike table info
					if( (NULL!= $rtPostTotalLikeDislikeArray) && (sizeof($rtPostTotalLikeDislikeArray) >0) ){
						
						$totalLike    = $TempPostTotalLikeDislikeArray["TOTAL_LIKES"];
						$totalDislike = $TempPostTotalLikeDislikeArray["TOTAL_DISLIKE"];

						Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Success Found Post Total Like and DisLike info");
						$TempPostTotalLikeDislikeArray =  $rtPostTotalLikeDislikeArray[0];	
						Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Total Like: ".$TempPostTotalLikeDislikeArray["TOTAL_LIKES"] );
						Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Total Dislike: ".$TempPostTotalLikeDislikeArray["TOTAL_DISLIKE"] );

					}else{

						Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Unable to Found Post Total Like and DisLike info");
						Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Please Try again later");
						$this->rollBackTransaction();
						return 0;

					}//++else end
					
					//++Check user product like/dislike table info
					if( (NULL!= $rtUserPostLikeArray) && (sizeof($rtUserPostLikeArray) >0)  ){
								
								Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Previous Post Like/DisLike Entry Found");
								$fnAlreadyUserPostLikeDisLikeFlag=true;
								$TemprtUserPostLikeArray =  $rtUserPostLikeArray[0];	
								
								$userLike    = $TemprtUserPostLikeArray["LIKES"];
								$userDisLike = $TemprtUserPostLikeArray["DISLIKE"];

								Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] User Like: ".$userLike );
								Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] User Dislike: ".$userDisLike );

								//Check Same Like
								if( 1 == $fnLikes){ //Check Like
									
									if( (1 == $fnLikes) && ( 1 == $TemprtUserPostLikeArray["LIKES"] ) ){
										
										Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Post Like Decrement Only Found ");
										//++Remove Existing Like Entry
										$fnSql = NULL;
										$fnSql = "UPDATE POST_LIKE_DISLIKE SET TOTAL_LIKES=TOTAL_LIKES-1 ";
										$fnLikeRemoveFlag=true;
										Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Post Like Decrement Only Sql: ".$fnSql);
										
									}else {

										Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Post Like Increment Only Found ");
										$fnSql = NULL;
										if( $userDisLike > 0){ //if Already User Dislike then remove it and update like
										    
										    Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Post Like Increment With Remove Previous Dislike");
											$fnSql = "UPDATE POST_LIKE_DISLIKE SET TOTAL_LIKES=TOTAL_LIKES+1,TOTAL_DISLIKE=TOTAL_DISLIKE-1 ";
											$fnDislikeToLikeFlag = true;
											
										}else{ //if no previous Dislike found then update like only
										
										    Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Post Like Increment With No Dislike Found");
											$fnSql = "UPDATE POST_LIKE_DISLIKE SET TOTAL_LIKES=TOTAL_LIKES+1";
											
										}//else end

										Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Post Like Increment Sql: ".$fnSql);

									}//else end

								}else { //Check DisLike

									//Check Same DisLike
									if( (0 == $fnLikes) && ( 1 == $TemprtUserPostLikeArray["DISLIKE"] ) ){
										
										Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Post DisLike No Change Found ");
										//++Remove Existing Dislike Entry
										$fnSql = NULL;
										$fnSql = "UPDATE POST_LIKE_DISLIKE SET TOTAL_DISLIKE=TOTAL_DISLIKE-1 ";
										$fnDisLikeRemoveFlag=true;
										Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Dislike No Change Sql: ".$fnSql);

									}else{

										Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Post DisLike Change Found ");
										$fnSql = NULL;
										if( $userLike > 0){ //if Already User like then remove it and update Dislike
										    
										    Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Post Dislike Change With Remove Previous like");
											$fnSql = "UPDATE POST_LIKE_DISLIKE SET TOTAL_LIKES=TOTAL_LIKES-1,TOTAL_DISLIKE=TOTAL_DISLIKE+1 ";
											$fnLikeToDislikeFlag=true;
											
										}else{ //if no previous like found then update Dislike only
										
										    Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Post Dislike Change With No Previous like");
											$fnSql = "UPDATE POST_LIKE_DISLIKE SET TOTAL_DISLIKE=TOTAL_DISLIKE+1 ";
											
										}//else end

										Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Dislike Change Sql: ".$fnSql);
										
									}//else end

								} //else end
								
								//++Update Entry from product like/dislike table
								Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Going to update post like/dislike table");
								$fnRtCode1 = $this->setPostLikeDisLikeInfoByPostID($fnSql,$fnPostId);
								if( 1 == $fnRtCode1 ){
									Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Like and DisLike of Post in Product like/dislike table update done");
								}else{
									Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Unable to update Like and DisLike of Post like/dislike table");
									$this->rollBackTransaction();
									return 0;
								}//else end
							
					}else{
					    
						Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] No Previous Product Like/DisLike Entry Found");
						Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Going to update Only product total like/dislike table");
						$fnSql = NULL;
						if( 1==  $fnLikes ){ //Like insert
							$fnSql = "UPDATE POST_LIKE_DISLIKE SET TOTAL_LIKES=TOTAL_LIKES+1 ";
						}else{ //DisLike insert
							$fnSql = "UPDATE POST_LIKE_DISLIKE SET TOTAL_DISLIKE=TOTAL_DISLIKE+1 ";
						}//else end
						$fnRtCode1 = $this->setPostLikeDisLikeInfoByPostID($fnSql,$fnPostId);
						if( 1 == $fnRtCode1 ){
							Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Like and DisLike of Post in Post like/dislike table update done");
						}else{
							Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Unable to update Like and DisLike of Post like/dislike table");
							$this->rollBackTransaction();
							return 0;
						}//else end

					}//++else end

					//++Step 2: 
					//++Check Product Like/Dislike update return code status
					if(  $fnRtCode1 > 0  ){ //++if already product like/dislike table updated further go for user like/dislike table
						
						Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Successfully updated product like/dislike info in product_like_dislike table");
						$fnSql = NULL;
						$fnSqlParamArray = NULL;
						$fnSqlConditionArray= NULL;
						$fnSqlConditionType="AND";
						$fnSqlOrderByArray=NULL;

						//++Step 2: Now Update user product rating table value by insert if no previous value found or Update if previous entry found
						if(  true == $fnAlreadyUserPostLikeDisLikeFlag ){
							
							//++Update Entry: Found Already Like/Dislike Value so going to update it in user like/dislike table
							Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Found User Post like/dislike previous info So going to update its value");
							$fnSql = $this->SQL_List["POST_LIKEDISLIKE_IN_USER_TABLE_UPDATE_SQL"];
							$fnSqlConditionArray= NULL;
							$fnSqlConditionArray= array();
							$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.PROFILE_ID"]    = $fnProfileId;
							$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.PROFILE_ID_OP"] ="=";
							$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.POST_ID"]       = $fnPostId;
							$fnSqlConditionArray["USER_GIVEN_LIKE_DISLIKE.POST_ID_OP"]    ="=";
							$fnLikeValue=0;
							$fnDisLikeValue=0;
							
							// Return Code: New Entry : 1 Remove Existings Like Entry: 2  Remove Existings DisLike Entry: 3
                            // Update Existings Entry Like to set: 4 Update Existings Entry Dislike to Like: 5 0: Failed No Operation Done
							
							if( ( 1==  $fnLikes) && (false == $fnLikeRemoveFlag) ){ //Like Increment Found
								
								$fnLikeValue=1;
								$fnDisLikeValue=0;
								if( false == $fnDislikeToLikeFlag ){
								    $fnRtCode3 = 4;
								    Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Return Code:4 Like Increment With No Previous Dislike found");
								}else{
								    $fnRtCode3 = 6;
								    Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Return Code:6 Like Increment With Previous Dislike found");
								}//else end
								
							}else if( ( 1==  $fnLikes) && (true == $fnLikeRemoveFlag) ){ //Like Decrement Found
								
								$fnLikeValue=0;
								$fnDisLikeValue=0;
								$fnRtCode3 = 2; //Like Decrement Only
								Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Return Code:2 Like Entry Decrement Found ");

							}else if( ( 0==  $fnLikes) && (false == $fnDisLikeRemoveFlag) ){ //Update DisLike from Like 
								
								$fnDisLikeValue=1;
								$fnLikeValue=0;
								if( false == $fnLikeToDislikeFlag ){
								    $fnRtCode3 = 5;
								    Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Return Code:5 Dislike Increment With No Previous like found");
								}else{
								    $fnRtCode3 = 7;
								    Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Return Code:7 Dislike Increment With Previous like found");
								}//else end
								
							
							}else if( ( 0==  $fnLikes) && (true == $fnDisLikeRemoveFlag) ){ //Decrement Dislike entry
								
								$fnDisLikeValue=0;
								$fnLikeValue=0;
								$fnRtCode3 = 3; //Dislike Entry only changed
								Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Return Code:3 Decrement DisLike Entry ");

							}//else end

							$fnSqlParamArray = NULL;
							$fnSqlParamArray = array();
							$fnSqlParamArray["LIKES_NEW_VALUE"]   = $fnLikeValue ;
							$fnSqlParamArray["DISLIKE_NEW_VALUE"] = $fnDisLikeValue ;
							$fnSqlConditionType="AND";
							$fnSqlOrderByArray=NULL;
							$fnRtCode2 = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray,$fnSqlParamArray);
							if( ($fnRtCode2 == 0) || ($fnRtCode2 == 1) ){
								$fnRtCode2=1;
							}//if end

						}else{ //++New Entry: insert new product like/dislike in user like/dislike table if no row found

							//++New Entry: insert new product like/dislike in user like/dislike table if no row found
							Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] No User Product Like/DisLike previous info found! So going to insert new value");
							$fnSql =  $this->SQL_List["POST_LIKEDISLIKE_IN_USER_TABLE_INSERT_SQL"];
							$fnSqlParamArray= array();
							$fnLikeValue=0;
							$fnDisLikeValue=0;
							if( 1==  $fnLikes ){ //++Like insert
								$fnLikeValue=1;
							}else{ //++DisLike insert
								$fnDisLikeValue=1;
							}//++else end
							$fnSqlParamArray["PROFILE_ID"]     = $fnProfileId;
							$fnSqlParamArray["POST_ID"]        = $fnPostId;
							$fnSqlParamArray["LIKES"]          = $fnLikeValue;
							$fnSqlParamArray["DISLIKE"]        = $fnDisLikeValue;
							$fnSqlParamArray["CREATION_DATE"]  = date("Y-m-d");
							$fnSqlParamArray["CREATION_TIME"]  = date("H:i:s");
							$fnRtCode2 = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray);
							$fnRtCode3 = 1; // New Entry: 1
						}//++else end

						if( 1 == $fnRtCode2  ){
							Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Successfully update or insert post like/dislike in user like/dislike table");
						}else{
							Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Unable to update or insert post like/dislike in user like/dislike table");
						}//++else end

						if( ( 1 == $fnRtCode1 ) && ( 1 == $fnRtCode2 ) ){
							$this->commitTransaction();
							Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Successfully Created like/dislike info");
							return $fnRtCode3;
						}else{
							$this->rollBackTransaction();
							Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Operation failed Unable to create like/dislike info");
							return 0; //Operation Failed
						}//++else end

					}else{
						$this->rollBackTransaction();
						Middatabase::loghandler("[Middatabase] [setPostLikeDislikeByUser()] Unable to update/insert post like/dislike info in user like/dislike table");
						return 0;
					}//++else end
					
			   }//++function setPostLikeDislikeByUser() end
	           
	           //++All Rating of Post Related DB query
	           public function getPostRatingInfoByProfileID($fnProfileId=NULL,$fnPostId=NULL){
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getPostRatingInfoByProfileID()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnSql = $this->SQL_List["POST_RATING_IN_USER_TABLE_SELECT_SQL"];
					//++Add Some where condition this checking code will be added with where cluase
					$fnSqlConditionArray= array();
					$fnSqlConditionArray["USER_RATING_INDEPTH.PROFILE_ID"]    = $fnProfileId;
					$fnSqlConditionArray["USER_RATING_INDEPTH.PROFILE_ID_OP"] ="=";
					$fnSqlConditionArray["USER_RATING_INDEPTH.POST_ID"]       = $fnPostId;
					$fnSqlConditionArray["USER_RATING_INDEPTH.POST_ID_OP"]    ="=";
					$fnSqlConditionType ="AND";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType); 
			   }//++function getPostRatingInfoByProfileID() end

			   public function setPostRatingInfoByPostID($fnSql=NULL,$fnPostId=NULL){
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setPostRatingInfoByPostID()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnSql ){
						$fnSql = "UPDATE PRODUCT_RATING SET ".$fnProductRatingKey."=".$fnProductRatingKey."+1 ";
					}//if end
					$fnSqlConditionArray= array();
				    $fnSqlConditionArray["POST_RATING.POST_ID"] = $fnPostId;
				    $fnSqlConditionArray["POST_RATING.POST_ID_OP"] ="=";
					Middatabase::loghandler("[Middatabase] [setPostRatingInfoByPostID()] ProductRating Table SQL: ".$fnSql );
				    return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
		       }//++function setPostRatingInfoByPostID() end

               public function setPostRatingByUser($fnProfileId=NULL,$fnPostId=NULL,$fnRatingValue=NULL){
						
				        if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] Valid Database Connection Not found");
							return 0;
						}//++if end

						$fnRtCode1 =0;
						$fnRtCode2=0;
						$fnSql = NULL;
						$fnSqlParamArray = NULL;
						$fnSqlConditionArray= NULL;
					    $fnSqlConditionType="AND";
					    $fnSqlOrderByArray=NULL;
						$fnPostRatingKey = "RATING";
						if( ($fnRatingValue >= 1) && ($fnRatingValue<=10) ){
							$fnPostRatingKey=$fnPostRatingKey."_".$fnRatingValue;
						}else{
                            Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] InValid Rating Value found");
							return 0;
						}//++else end

						//++Found Previuos Any Entry of User Product Entry then check if it same or new value entry
						//if it same then return otherwise decrement one from previous rating value from product rating table
						
						//++Step 1: Find Rating Value of User Rating Table if they dont match then decrement previous rating value from product rating table
						$fnAlreadyUserPostRatingFlag=false;
						$rtUserPostRatingArray = NULL;
						$rtUserPostRatingArray = $this->getPostRatingInfoByProfileID($fnProfileId,$fnPostId);
                        if( (NULL!= $rtUserPostRatingArray) && (sizeof($rtUserPostRatingArray) >0) ){
							    
							    $fnAlreadyUserPostRatingFlag=true;
							    $TemprtUserPostRatingArray =  $rtUserPostRatingArray[0];
								if( 0 == strcmp($TemprtUserPostRatingArray["RATING"],$fnRatingValue) ){
									Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] PostRating No Change Found ");
									return 0;
								}else{
									Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] PostRating Change Found ");
									$TempfnPostRatingKey="RATING";
									$TempfnRatingValue = $TemprtUserPostRatingArray["RATING"];
									if( ($TempfnRatingValue >= 1) && ($TempfnRatingValue<=10) ){
										$TempfnPostRatingKey=$TempfnPostRatingKey."_".$TempfnRatingValue;
									}else{
										Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] InValid Rating Value from user table found");
										return 0;
									}//else end
									$this->beginTransaction();
									$fnSql = "UPDATE POST_RATING SET ".$TempfnPostRatingKey."=".$TempfnPostRatingKey."-1 ";
								    if( 1 == $this->setPostRatingInfoByPostID($fnSql,$fnPostId) ){
										Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] Decrement PostRating table done");
                                        $this->commitTransaction();
									}else{
										Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] Unable to decrement PostRating table ");
										$this->rollBackTransaction();
										return 0;
									}//++else end
								}//++else end
						}//++if end
                        
                        //++Step 2: Now Update New rating value in post rating table
						$fnSql = "UPDATE POST_RATING SET ".$fnPostRatingKey."=".$fnPostRatingKey."+1 ";
						$fnSqlConditionArray= NULL;
						$fnSqlConditionArray= array();
					    $fnSqlConditionArray["POST_RATING.POST_ID"]     = $fnPostId;
					    $fnSqlConditionArray["POST_RATING.POST_ID_OP"]  ="=";
						Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] PostRating Table SQL: ".$fnSql );
						$this->beginTransaction();
						$fnRtCode1 = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray,$fnSqlParamArray); 
						if(  $fnRtCode1 > 0  ){
							Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] Successfully updated post rating info in product rating table");
							$fnSql = NULL;
						    $fnSqlParamArray = NULL;
						    $fnSqlConditionArray= NULL;
					        $fnSqlConditionType="AND";
							$fnSqlOrderByArray=NULL;
							//++Step 2: Now Update user post rating table value by insert if no previous value found or Update if previous entry found
							if(  true == $fnAlreadyUserPostRatingFlag ){
								Middatabase::loghandler("[Middatabase] [setProductRatingByUser()] Found User post Rating previous info So going to update its value");
								$fnSql = $this->SQL_List["POST_RATING_IN_USER_TABLE_UPDATE_SQL"];
								$fnSqlConditionArray= NULL;
								$fnSqlConditionArray= array();
								$fnSqlConditionArray["USER_RATING_INDEPTH.PROFILE_ID"]    = $fnProfileId;
								$fnSqlConditionArray["USER_RATING_INDEPTH.PROFILE_ID_OP"] ="=";
								$fnSqlConditionArray["USER_RATING_INDEPTH.POST_ID"]       = $fnPostId;
								$fnSqlConditionArray["USER_RATING_INDEPTH.POST_ID_OP"]    ="=";
								$fnSqlParamArray = NULL;
								$fnSqlParamArray = array();
								$fnSqlParamArray["RATING_NEW_VALUE"] = $fnRatingValue ;
								$fnSqlConditionType="AND";
					            $fnSqlOrderByArray=NULL;
					            $fnRtCode2 = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray,$fnSqlParamArray); 
							}else{
								Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] No User post Rating previous info found! So going to insert new value");
								//insert new post rating in user table if no row found
								$fnSql =  $this->SQL_List["POST_RATING_IN_USER_TABLE_INSERT_SQL"];
								$fnSqlParamArray= array();
								$fnSqlParamArray["PROFILE_ID"]     = $fnProfileId;
								$fnSqlParamArray["POST_ID"]        = $fnPostId;
								$fnSqlParamArray["RATING"]         = $fnRatingValue;
								$fnSqlParamArray["CREATION_DATE"]  = date("Y-m-d");
								$fnSqlParamArray["CREATION_TIME"]  = date("H:i:s");
								$fnRtCode2 = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
							}//++else end

							if( 1 == $fnRtCode2  ){
								Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] Successfully update or insert post rating in user table");
							}else{
								Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] Unable to update or insert post rating in user table");
							}//else end

							if( ( 1 == $fnRtCode1 ) && ( 1 == $fnRtCode2 ) ){
								$this->commitTransaction();
								Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] Successfully Created post rating info");
							    return 1;
							}else{
								$this->rollBackTransaction();
								Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] Unable to create post rating info");
								return 0;
							}//++else end
						}else{
							$this->rollBackTransaction();
							Middatabase::loghandler("[Middatabase] [setPostRatingByUser()] Unable to update post rating info in product rating table");
							return 0;
						}//++else end
						
			
			   }//++function setPostRatingByUser() end
			   
			   public function getPostBasicDataV2($fnPostID=NULL){

                    $fnSql = "SELECT POST_BASIC.POST_ID,
                                     POST_BASIC.POST_TYPE,
                                     POST_BASIC.POST_STATUS,
                                     POST_BASIC.POST_PRIVACY,
                                     POST_BASIC.POST_AUTHOR,
                                     POST_BASIC.POST_TITLE,
                                     POST_BASIC.POST_TEXT,
                                     POST_BASIC.POST_LOCATION,
                                     POST_BASIC.POST_PARENT,
                                     POST_BASIC.POST_HAVEANYCHILD,
                                     POST_BASIC.POST_ISACOMMUNITYPOST,
                                     POST_BASIC.POST_HAVEANYIMAGES,
                                     POST_BASIC.POST_NUMBEROFIMAGES,
                                     POST_BASIC.POST_HAVEANYVIDEOS,
                                     POST_BASIC.POST_NUMBEROFVIDEOS,
                                     POST_BASIC.CREATION_DATE,
                                     POST_BASIC.CREATION_TIME
                                     From POST_BASIC";
							
					//++Add Some where condition this checking code will be added with where cluase
					if( NULL!=$fnPostID ){
						$fnSql= $fnSql." WHERE POST_BASIC.POST_ID='".$fnPostID."'";
					}//if end

					$fnSqlConditionType ="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType); 

			   }//++function getPostBasicDataV2() end
			   
			   public function getPostBasicData($fnPostID=NULL){

                    $fnSql = "SELECT POST_BASIC.POST_ID,
                                     POST_BASIC.POST_TYPE,
                                     POST_BASIC.POST_STATUS,
                                     POST_BASIC.POST_PRIVACY,
                                     POST_BASIC.POST_AUTHOR,
                                     POST_BASIC.POST_TITLE,
                                     POST_BASIC.POST_CONTENT,
                                     POST_BASIC.POST_HAVEANYIMAGES,
                                     POST_BASIC.POST_NUMBEROFIMAGES,
                                     POST_BASIC.POST_HAVEANYVIDEOS,
                                     POST_BASIC.POST_NUMBEROFVIDEOS,
                                     POST_LIKE_DISLIKE.TOTAL_LIKES,
                                     POST_LIKE_DISLIKE.TOTAL_DISLIKE
                                     From POST_BASIC
                                     INNER JOIN POST_LIKE_DISLIKE ON POST_BASIC.POST_ID=POST_LIKE_DISLIKE.POST_ID";
							
					//++Add Some where condition this checking code will be added with where cluase
					if( NULL!=$fnPostID ){
						$fnSql= $fnSql." WHERE POST_BASIC.POST_ID='".$fnPostID."' and ( (POST_BASIC.POST_NUMBEROFIMAGES=1) OR (POST_BASIC.POST_NUMBEROFVIDEOS=1)  )";
					}//++if end
					$fnSqlConditionType ="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType); 

			   }//++function getPostBasicData() end
			   
			   public function getPostImageData($fnPostID=NULL){

                    $fnSql = "SELECT POST_BASIC.POST_ID,
                                     POST_IMAGE.POST_IMAGE_ID,
                                     POST_IMAGE.POST_IMAGE_PATH,
                                     POST_IMAGE.IS_A_PART_OF_ALBUM,
                                     POST_IMAGE.ALBUM_ID,
                                     ALBUM_INFO.ALBUM_NAME
                                     From POST_IMAGE
                                     INNER JOIN POST_BASIC ON POST_BASIC.POST_ID =POST_IMAGE.POST_ID
                                     INNER JOIN ALBUM_INFO ON ALBUM_INFO.ALBUM_ID=POST_IMAGE.ALBUM_ID";
                                     
					if( NULL!=$fnPostID ){
						$fnSql= $fnSql." WHERE POST_IMAGE.POST_ID='".$fnPostID."'";
					}//++if end
					$fnSqlConditionType ="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType); 
					
			   }//++function getPostImageData() end
			   
			   public function getPostVideoData($fnPostID=NULL){

                    $fnSql = "SELECT POST_BASIC.POST_ID,
                                     POST_VIDEO.POST_VIDEO_ID,
                                     POST_VIDEO.POST_VIDEO_PATH,
                                     POST_VIDEO.IS_A_PART_OF_ALBUM,
                                     POST_VIDEO.ALBUM_ID,
                                     ALBUM_INFO.ALBUM_NAME
                                     From POST_VIDEO
                                     INNER JOIN POST_BASIC ON POST_BASIC.POST_ID = POST_VIDEO.POST_ID
                                     INNER JOIN ALBUM_INFO ON ALBUM_INFO.ALBUM_ID= POST_VIDEO.ALBUM_ID";
                                     
					if( NULL!=$fnPostID ){
						$fnSql= $fnSql." WHERE POST_VIDEO.POST_ID='".$fnPostID."'";
					}//if end

					$fnSqlConditionType ="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType); 

			   }//++function getPostVideoData() end
			   
			   public function updateProfileBasic($fnProfileId=NULL,$fnfname=NULL,$fnlname=NULL,$fnMobileId=NULL,$fnEmailId=NULL){
					
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileBasic()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnSql = "UPDATE USER_BASIC_INFO SET";
					$firstCondition=false;
					
					if( null!= $fnfname ){
					    $fnSql = $fnSql." USER_BASIC_INFO.USER_FIRST_NAME='".$fnfname."'";
					    $firstCondition=true;
					}//if end
					
					if( null!= $fnlname ){
					    $fnSql = $fnSql." USER_BASIC_INFO.USER_LAST_NAME='".$fnlname."',";
					    if( true == $firstCondition){
					         $fnSql = $fnSql.",";
					    }//if end
					}//if end
					
					if( null!= $fnMobileId ){
					    $fnSql = $fnSql." USER_BASIC_INFO.USER_MOBILE_ID='".$fnMobileId."',";
					    if( true == $firstCondition){
					         $fnSql = $fnSql.",";
					    }//if end
					}//if end
					
					if( null!= $fnEmailId ){
					    $fnSql = $fnSql." USER_BASIC_INFO.USER_EMAIL_ID='".$fnEmailId."',";
					    if( true == $firstCondition){
					         $fnSql = $fnSql.",";
					    }//if end
					}//if end
					
					if( (NULL==$fnfname) && ( NULL == $fnlname ) && ( NULL== $fnMobileId ) && (NULL == $fnEmailId ) ){
					    Middatabase::loghandler("[Middatabase] [updateProfileBasic()] Please Provide some all param value");
					    return NULL;
					}//if end
					$fnSqlConditionArray= array();
					$fnSqlConditionArray["USER_BASIC_INFO.PROFILE_ID"]    = $fnProfileId;
					$fnSqlConditionArray["USER_BASIC_INFO.PROFILE_ID_OP"] ="=";
					Middatabase::loghandler("[Middatabase] [updateProfileBasic()] SQL: ".$fnSql );
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
			   
			   }//++function updateProfileBasic() end
			   
			   public function setProfileEducation($fnProfileId=NULL,$fnRegisterDataArray){
					
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setProfileEducation()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnRegisterDataArray){
					    Middatabase::loghandler("[Middatabase] [setProfileEducation()] Please Provide education data");
					    return NULL;
					}//++if end
					$str = $fnProfileId.$fnRegisterDataArray["INSTITUTE_NAME"].$fnRegisterDataArray["EDUCATION_CATEGORY"].$fnRegisterDataArray["DEGREE"].$fnRegisterDataArray["SUBJECT"].date("Y-m-d").date("H:i:s");
					$fnEducationId   = "ed".CreateId::getIDType1(6,$str);
					$fnSqlParamArray = array();
					$fnSqlParamArray["PROFILE_ID"]            = $fnProfileId;
					$fnSqlParamArray["EDUCATION_ID"]          = $fnEducationId;
					$fnSqlParamArray["INSTITUTE_NAME"]        = $fnRegisterDataArray["INSTITUTE_NAME"];
					$fnSqlParamArray["EDUCATION_CATEGORY"]    = $fnRegisterDataArray["EDUCATION_CATEGORY"];
					$fnSqlParamArray["DEGREE"]                = $fnRegisterDataArray["DEGREE"];
					$fnSqlParamArray["SUBJECT"]               = $fnRegisterDataArray["SUBJECT"];
					$fnSqlParamArray["START_DATE"]            = $fnRegisterDataArray["START_DATE"];
					$fnSqlParamArray["END_DATE"]              = $fnRegisterDataArray["END_DATE"];
					$fnSqlParamArray["CREATION_DATE"]         = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]         = date("H:i:s");
					$fnSql    = NULL;
					$fnSql    = $this->SQL_List["USER_EDUCATION_SQL"];
					Middatabase::loghandler("[Middatabase] [setProfileEducation()] SQL: ".$fnSql );
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
				    
			  }//++function setProfileEducation() end
				
			   public function setProfileEmployment($fnProfileId=NULL,$fnRegisterDataArray){
					
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setProfileEmployment()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnRegisterDataArray){
					    Middatabase::loghandler("[Middatabase] [setProfileEmployment()] Please Provide education data");
					    return NULL;
					}//++if end
					$str = $fnProfileId.$fnRegisterDataArray["COMPANY_ID"].$fnRegisterDataArray["COMPANY_NAME"].$fnRegisterDataArray["DESIGNATION"].$fnRegisterDataArray["ROLES"].date("Y-m-d").date("H:i:s");
					$fnCompanyId   = "ed".CreateId::getIDType1(6,$str);
					$fnSqlParamArray = array();
					$fnSqlParamArray["PROFILE_ID"]            = $fnProfileId;
					$fnSqlParamArray["COMPANY_ID"]            = $fnCompanyId;
					$fnSqlParamArray["COMPANY_NAME"]          = $fnRegisterDataArray["COMPANY_NAME"];
					$fnSqlParamArray["DESIGNATION"]           = $fnRegisterDataArray["DESIGNATION"];
					$fnSqlParamArray["ROLES"]                 = $fnRegisterDataArray["ROLES"];
					$fnSqlParamArray["START_DATE"]            = $fnRegisterDataArray["START_DATE"];
					$fnSqlParamArray["END_DATE"]              = $fnRegisterDataArray["END_DATE"];
					$fnSqlParamArray["CREATION_DATE"]         = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]         = date("H:i:s");
					$fnSql    = NULL;
					$fnSql    = $this->SQL_List["USER_EMPLOYMENT_SQL"];
					Middatabase::loghandler("[Middatabase] [setProfileEmployment()] SQL: ".$fnSql );
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
				    
			   }//++function setProfileEducation() end
			   
			   public function setProfileAwards($fnProfileId=NULL,$fnRegisterDataArray){
					
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setProfileAwards()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnRegisterDataArray){
					    Middatabase::loghandler("[Middatabase] [setProfileAwards()] Please Provide awards data");
					    return NULL;
					}//++if end
					$str = $fnProfileId.$fnRegisterDataArray["AWARD_NAME"].$fnRegisterDataArray["AWARD_TOPIC"].$fnRegisterDataArray["AWARD_DATE"].date("Y-m-d").date("H:i:s");
					$fnAwardId   = "aw".CreateId::getIDType1(6,$str);
					$fnSqlParamArray = array();
					$fnSqlParamArray["PROFILE_ID"]            = $fnProfileId;
					$fnSqlParamArray["AWARD_ID"]              = $fnAwardId;
					$fnSqlParamArray["AWARD_NAME"]            = $fnRegisterDataArray["AWARD_NAME"];
					$fnSqlParamArray["AWARD_TOPIC"]           = $fnRegisterDataArray["AWARD_TOPIC"];
					$fnSqlParamArray["AWARD_DATE"]            = $fnRegisterDataArray["AWARD_DATE"];
					$fnSqlParamArray["CREATION_DATE"]         = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]         = date("H:i:s");
					$fnSql    = NULL;
					$fnSql    = $this->SQL_List["USER_AWARD_SQL"];
					Middatabase::loghandler("[Middatabase] [setProfileEmployment()] SQL: ".$fnSql );
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
				    
			   }//++function setProfileEducation() end
			   
			   public function setProfileFavourite($fnProfileId=NULL,$fnRegisterDataArray){
					/*
					Favourite Actor     : 1
					Favourite Actress   : 2
					Favourite Movies    : 3
					Favourite WebSeries : 4
					Favourite TvShows   : 5
					Favourite Sports    : 6
					Favourite Sportsman : 7
					Favourite TvChanel  : 8
					Favourite Hobbies   : 9
					*/
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setProfileAwards()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnRegisterDataArray){
					    Middatabase::loghandler("[Middatabase] [setProfileAwards()] Please Provide awards data");
					    return NULL;
					}//++if end
					$str = $fnProfileId.$fnRegisterDataArray["FAVOURITE_CATEGORY"].$fnRegisterDataArray["FAVOURITE_NAME"].date("Y-m-d").date("H:i:s");
					$fnAwardId   = "fav".CreateId::getIDType1(6,$str);
					$fnSqlParamArray = array();
					$fnSqlParamArray["PROFILE_ID"]            = $fnProfileId;
					$fnSqlParamArray["FAVOURITE_ID"]          = $fnAwardId;
					$fnSqlParamArray["FAVOURITE_CATEGORY"]    = $fnRegisterDataArray["FAVOURITE_CATEGORY"];
					$fnSqlParamArray["FAVOURITE_NAME"]        = $fnRegisterDataArray["FAVOURITE_NAME"];
					$fnSqlParamArray["CREATION_DATE"]         = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]         = date("H:i:s");
					$fnSql    = NULL;
					$fnSql    = $this->SQL_List["USER_FAVOURITE_SQL"];
					Middatabase::loghandler("[Middatabase] [setProfileEmployment()] SQL: ".$fnSql );
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
				    
			   }//++function setProfileFavourite() end
			   
			   public function setNewForgotPasswordInfo($fnForgotPasswordArray){
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setNewForgotPasswordInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_FORGOT_PASSWORD_SQL"];
					$fnSqlParamArray = NULL;
					$fnSqlParamArray = $fnForgotPasswordArray;
					$fnRtCode = $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [setNewForgotPasswordInfo()] Successfully Created forgot password entry for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setNewForgotPasswordInfo()] Unable to create a forgot password entry for an user");
						return 0;
					}//else end
			   }//++public function setNewForgotPasswordInfo() end

			   public function setNewPasswordInfo($fnLoginID,$fnNewPassword){
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setNewForgotPasswordInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_PASSWORD_SETUP_SQL"];
					$fnSqlParamArray = NULL;
					$fnSqlParamArray = array();
					$fnSqlParamArray["USER_PWD"]      = $fnNewPassword ;
					$fnSqlConditionArray= array();
					$fnSqlConditionArray["USER_LOGIN_INFO.USER_LOGIN_ID"]    = $fnLoginID;
					$fnSqlConditionArray["USER_LOGIN_INFO.USER_LOGIN_ID_OP"] ="=";
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray,$fnSqlParamArray); 
					if(  $fnRtCode > 0  ){
						Middatabase::loghandler("[Middatabase] [setNewForgotPasswordInfo()] Successfully Created forgot password entry for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setNewForgotPasswordInfo()] Unable to create a forgot password entry for an user");
						return 0;
					}//else end
		       }//++public function setNewPasswordInfo() end
		       
		       public function setNewPasswordInfoByProfileId($fnProfileID,$fnNewPassword){
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [setNewPasswordInfoByProfileId()] Valid Database Connection Not found");
						return 0;
					}//++if end
					$fnRtCode =0;
					$fnSql = NULL;
					$fnSql = $this->SQL_List["NEW_PASSWORD_SETUP_SQL"];
					$fnSqlParamArray = NULL;
					$fnSqlParamArray = array();
					$PasswordhashObj = new Passwordhash();
					$fnNewPasswordHash = $PasswordhashObj->generate_hash($fnNewPassword);
					$fnSqlParamArray["USER_PWD"]      = $fnNewPasswordHash ;
					$fnSqlConditionArray= array();
					$fnSqlConditionArray["USER_LOGIN_INFO.PROFILE_ID"]    = $fnProfileID;
					$fnSqlConditionArray["USER_LOGIN_INFO.PROFILE_ID_OP"] ="=";
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray,$fnSqlParamArray); 
					if(  $fnRtCode > 0  ){
						Middatabase::loghandler("[Middatabase] [setNewPasswordInfoByProfileId()] Successfully Created new password entry for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [setNewPasswordInfoByProfileId()] Unable to create a new password entry for an user");
						return 0;
					}//else end
		       }//++public function setNewPasswordInfoByProfileId() end
			   
			   public function getForgotPasswordInfo($fnLoginId){
				           
				if( NULL == $this->GenDBOperationObj ){
					Middatabase::loghandler("[Middatabase] [getForgotPasswordInfo()] Valid Database Connection Not found");
					return 0;
				}//++if end
				$fnSql = $this->SQL_List["GET_FORGOT_PASSWORD_DETAILS_SQL"];
				//++Add Some where condition this checking code will be added with where cluase
				$fnSqlConditionArray= array();
				$fnSqlConditionArray["forgot_password.USER_LOGIN_ID"] = $fnLoginId;
				$fnSqlConditionArray["forgot_password.USER_LOGIN_ID_OP"] ="=";
			    return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray); 
				
			   }//++public function getForgotPasswordInfo() end

		       public function getForgotPwdHashByUserId($fnUserId){
                    
                    /*  
                    	SELECT USER_LOGIN_ID,
                    	   AUTH_KEY,
                           EXPIRARY_DATE,
                    	   EXPIRARY_TIME 
                    	   FROM forgot_password
                    	   WHERE forgot_password.USER_LOGIN_ID='malay.emailme@gmail.com' AND  
                    			 forgot_password.AUTH_KEY='$2y$11$UIbgML5H/07JdQTMXCl9SO88MI.IKhAvsX..46xlnFYOztdtaXKgS'      AND
                    			 TIME_TO_SEC( ADDTIME(forgot_password.EXPIRARY_TIME,"00:15:00") ) < '1582022633'
                    */
                    date_default_timezone_set("Asia/Kolkata");
		            $currentTime = date("H:i:s");//strtotime("now");
		            $currentDate = date("Y-m-d");
		            $fnSql = "SELECT USER_LOGIN_ID,
					                 AUTH_KEY,
					                 EXPIRARY_DATE,
					                 EXPIRARY_TIME 
					                 FROM forgot_password
					                 WHERE forgot_password.USER_LOGIN_ID ='".$fnUserId."'    AND 
					                       forgot_password.EXPIRARY_DATE ='".$currentDate."' AND
					                       TIME_TO_SEC(ADDTIME(forgot_password.EXPIRARY_TIME,'00:15:00')) >= TIME_TO_SEC('".$currentTime."')"; 
					$fnSqlConditionArray= array();
					$fnSqlConditionType = "AND";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType); 

		       }//++function getForgotPwdHashByUserId() end
		       
		       public function updateProfileName($fnProfileId,$fnProfileFirstName,$fnProfileLastName){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileName()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO SET";
					
					if( ( null == $fnProfileFirstName ) || ( null == $fnProfileLastName ) ){
					    Middatabase::loghandler("[Middatabase] [updateProfileName()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileFirstName ){
					    $fnSql = $fnSql." USER_FIRST_NAME='".$fnProfileFirstName."'";
					}//if end
					
					if( null != $fnProfileLastName ){
					    $fnSql = $fnSql." ,USER_LAST_NAME='".$fnProfileLastName."'";
					}//if end 
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateProfileName()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileName()] Successfully updated profile name for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileName()] Unable to update profile name for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileName() end
			   
			   public function updateProfileIntro($fnProfileId,$fnProfileIntroStr){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileIntro()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO_INDEPTH SET";
					
					if(  null == $fnProfileIntroStr  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileIntro()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileIntroStr ){
					    $fnSql = $fnSql."  	PROFILE_DESC='".$fnProfileIntroStr."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateProfileIntro()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileIntro()] Successfully updated profile intro for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileIntro()] Unable to update profile intro for an user");
						return 0;
					}//++else end
					
			   }//++public function updateProfileIntro() end
			   
			   public function updateProfileDOB($fnProfileId,$fnProfileDOBStr){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileDOB()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO_INDEPTH SET";
					
					if(  null == $fnProfileDOBStr  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileDOB()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileDOBStr ){
					    $fnSql = $fnSql."  	USER_BIRTHDAY='".$fnProfileDOBStr."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateProfileIntro()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileDOB()] Successfully updated profile dob for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileDOB()] Unable to update profile dob for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileDOB() end
			   
			   public function getUserPrivacyKey($fnProfileId,$fnPrivacyKey){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getUserPrivacyKey()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [getUserPrivacyKey()] Valid Profile Id not found");
						return 0;
					}//++if end
					
					$sqlCond             = null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql               = NULL;
					$fnSql = 'SELECT USER_PROFILE_PRIVACY.PROFILE_ID,
                            		 USER_PROFILE_PRIVACY.PRIVACY_KEY,
                            		 USER_PROFILE_PRIVACY.PRIVACY_VALUE,
                                     USER_PROFILE_PRIVACY.CREATION_DATE,
                                     USER_PROFILE_PRIVACY.CREATION_TIME
                            FROM  USER_PROFILE_PRIVACY
                            WHERE USER_PROFILE_PRIVACY.PROFILE_ID="'.$fnProfileId.'" AND USER_PROFILE_PRIVACY.PRIVACY_KEY="'.$fnPrivacyKey.'";';
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getUserPrivacyKey() end
			   
			   public function createUserNewPrivacyKey($fnProfileId,$fnPrivacyKey,$fnPrivacyValue){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [createUserNewPrivacyKey()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [createUserNewPrivacyKey()] Valid Profile Id not found");
						return 0;
					}//++if end
					
					$fnSql              = NULL;
					$fnSql              = 'INSERT INTO USER_PROFILE_PRIVACY VALUES(:PROFILE_ID,:PRIVACY_KEY,:PRIVACY_VALUE,:CREATION_DATE,:CREATION_TIME);';
					$fnSqlConditionType = "OR";
					$fnSqlParamArray    = NULL;
					$fnSqlParamArray    = array();
					$fnSqlParamArray["PROFILE_ID"]              = $fnProfileId;
					$fnSqlParamArray["PRIVACY_KEY"]             = $fnPrivacyKey;
					$fnSqlParamArray["PRIVACY_VALUE"]           = $fnPrivacyValue;
					$fnSqlParamArray["CREATION_DATE"]           = date("Y-m-d");
					$fnSqlParamArray["CREATION_TIME"]           = date("H:i:s");
					Middatabase::loghandler("[Middatabase] [createUserNewPrivacyKey()] SQL: ".$fnSql );
					$this->beginTransaction();
					$fnSqlRtCode =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
					if( 1 == $fnSqlRtCode){
					    Middatabase::loghandler("[Middatabase] [createUserNewPrivacyKey()] User Privacy Key Info create success" );
						$this->commitTransaction();
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [createUserNewPrivacyKey()] User Privacy Key Info create failed" );
						$this->rollBackTransaction();
						return 0;
					}//++else end
					
			   }//++public function createUserNewPrivacyKey() end
			   
			   public function updateUserPrivacyKey($fnProfileId,$fnPrivacyKey,$fnPrivacyValue){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateUserPrivacyKey()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [updateUserPrivacyKey()] Valid Profile Id not found");
						return 0;
					}//++if end
					
					if(  null == $fnPrivacyKey  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileDOBDayPrivacy()] Valid Privacy Key not Found");
						return 0;
					}//if end
					
					if(  null == $fnPrivacyValue  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileDOBDayPrivacy()] Valid Privacy Key Value not Found");
						return 0;
					}//if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_PROFILE_PRIVACY SET";
					$fnSql = $fnSql."  PRIVACY_VALUE='".$fnPrivacyValue."'";
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."' and PRIVACY_KEY='".$fnPrivacyKey."';";
					Middatabase::loghandler("[Middatabase] [updateUserPrivacyKey()] SQL: ".$fnSql );
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateUserPrivacyKey()] Successfully updated profile dob day privacy for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateUserPrivacyKey()] Unable to update profile dob day privacy for an user");
						return 0;
					}//else end
					
			   }//++public function updateUserPrivacyKey() end
			   
			   public function removeUserPrivacyKeyInfo($fnProfileId,$fnPrivacyKey){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [removeUserPrivacyKeyInfo()] Valid Database Connection Not found");
						return 0;
					}//++if end
					if( NULL == $fnProfileId ){
						Middatabase::loghandler("[Middatabase] [removeUserPrivacyKeyInfo()] Valid Profile Id not found");
						return 0;
					}//++if end
					if( NULL == $fnPrivacyKey ){
						Middatabase::loghandler("[Middatabase] [removeUserPrivacyKeyInfo()] Valid Privacy Key not found");
						return 0;
					}//++if end
					$sqlCond=null;
					$fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
				    $fnSql = NULL;
					$fnSql = 'DELETE FROM USER_PROFILE_PRIVACY WHERE USER_PROFILE_PRIVACY.PROFILE_ID="'.$fnProfileId.'" AND USER_PROFILE_PRIVACY.PRIVACY_KEY="'.$fnPrivacyKey.'";';
					return $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 

			   }//++public function removeUserPrivacyKeyInfo() end
			   
			   public function updateProfileDOBDayPrivacy($fnProfileId,$fnProfileDOBDayPrivacy){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileDOB()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_PROFILE_PRIVACY SET";
					
					if(  null == $fnProfileDOBDayPrivacy  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileDOBDayPrivacy()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileDOBDayPrivacy ){
					    $fnSql = $fnSql."  PRIVACY_VALUE='".$fnProfileDOBDayPrivacy."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."' and PRIVACY_KEY='DOB_DAY';";
					Middatabase::loghandler("[Middatabase] [updateProfileDOBDayPrivacy()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileDOBDayPrivacy()] Successfully updated profile dob day privacy for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileDOBDayPrivacy()] Unable to update profile dob day privacy for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileDOBDayPrivacy() end
			   
			   public function updateProfileDOBYearPrivacy($fnProfileId,$fnProfileDOBYearPrivacy){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileDOBYearPrivacy()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_PROFILE_PRIVACY SET";
					
					if(  null == $fnProfileDOBYearPrivacy  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileDOBYearPrivacy()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileDOBYearPrivacy ){
					    $fnSql = $fnSql."  PRIVACY_VALUE='".$fnProfileDOBYearPrivacy."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."' and PRIVACY_KEY='DOB_YEAR';";
					Middatabase::loghandler("[Middatabase] [updateProfileDOBYearPrivacy()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileDOBYearPrivacy()] Successfully updated profile dob year privacy for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileDOBYearPrivacy()] Unable to update profile dob year privacy for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileDOBYearPrivacy() end
			   
			   public function updateProfileGender($fnProfileId,$fnProfileGender){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileGender()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO_INDEPTH SET";
					
					if(  null == $fnProfileGender  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileGender()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileGender ){
					    $fnSql = $fnSql."   USER_GENDER='".$fnProfileGender."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateProfileGender()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileGender()] Successfully updated profile gender for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileGender()] Unable to update profile gender for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileGender() end
			   
			   public function updateProfileSexualOrientation($fnProfileId,$fnProfileSexualOrientation){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileSexualOrientation()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO_INDEPTH SET";
					
					if(  null == $fnProfileSexualOrientation  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileSexualOrientation()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileSexualOrientation ){
					    $fnSql = $fnSql."   USER_SEXUAL_ORIENTATION='".$fnProfileSexualOrientation."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateProfileSexualOrientation()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileSexualOrientation()] Successfully updated profile sexual orientation for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileSexualOrientation()] Unable to update profile sexual orientation for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileSexualOrientation() end
               
               public function updateProfileRelationshipStatus($fnProfileId,$fnProfileRelationshipStatus){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileRelationshipStatus()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO_INDEPTH SET";
					
					if(  null == $fnProfileRelationshipStatus  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileRelationshipStatus()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileRelationshipStatus ){
					    $fnSql = $fnSql."   USER_MARTIAL_STATUS='".$fnProfileRelationshipStatus."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateProfileRelationshipStatus()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileRelationshipStatus()] Successfully updated profile relationship status for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileRelationshipStatus()] Unable to update profile relationship status for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileRelationshipStatus() end
               
               public function updateProfileOccupation($fnProfileId,$fnProfileOccupation){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileOccupation()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO_INDEPTH SET";
					
					if(  null == $fnProfileOccupation  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileOccupation()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileOccupation ){
					    $fnSql = $fnSql."   USER_OCCUPATION='".$fnProfileOccupation."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateProfileOccupation()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileOccupation()] Successfully updated profile relationship status for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileOccupation()] Unable to update profile relationship status for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileOccupation() end
			   
			   public function updateProfileCountry($fnProfileId,$fnProfileCountry){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileCountry()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO_INDEPTH SET";
					
					if(  null == $fnProfileCountry  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileCountry()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileCountry ){
					    $fnSql = $fnSql."   USER_COUNTRY='".$fnProfileCountry."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateProfileCountry()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileCountry()] Successfully updated profile country for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileCountry()] Unable to update profile country for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileCountry() end
			   
			   public function updateProfilePlace($fnProfileId,$fnProfilePlace){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfilePlace()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO_INDEPTH SET";
					
					if(  null == $fnProfilePlace  ){
					    Middatabase::loghandler("[Middatabase] [updateProfilePlace()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfilePlace ){
					    $fnSql = $fnSql."   USER_PLACE='".$fnProfilePlace."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateProfilePlace()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfilePlace()] Successfully updated profile place for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfilePlace()] Unable to update profile place for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfilePlace() end
			   
			   public function updateProfileEmail($fnProfileId,$fnProfileEmail){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileEmail()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO SET";
					
					if(  null == $fnProfileEmail  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileEmail()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileEmail ){
					    $fnSql = $fnSql."   USER_EMAIL_ID='".$fnProfileEmail."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateProfileEmail()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileEmail()] Successfully updated profile email for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileEmail()] Unable to update profile email for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileEmail() end
			   
			   public function updateProfileMobile($fnProfileId,$fnProfileMobile){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateProfileMobile()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE USER_BASIC_INFO SET";
					
					if(  null == $fnProfileMobile  ){
					    Middatabase::loghandler("[Middatabase] [updateProfileMobile()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileMobile ){
					    $fnSql = $fnSql."   USER_EMAIL_ID='".$fnProfileMobile."'";
					}//if end
					
					$fnSql = $fnSql." WHERE PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateProfileEmail()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateProfileMobile()] Successfully updated profile mobile for an user");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateProfileMobile()] Unable to update profile mobile for an user");
						return 0;
					}//else end
					
			   }//++public function updateProfileMobile() end
			   
			   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			   
			   public function updateCommunityProfileName($fnProfileId,$fnProfileName){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileName()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE COMMUNITY_BASIC_INFO_INDEPTH SET";
					
					if( null == $fnProfileName  ){
					    Middatabase::loghandler("[Middatabase] [updateCommunityProfileName()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileName ){
					    $fnSql = $fnSql." COMMUNITY_NAME='".$fnProfileName."'";
					}//if end
				
					$fnSql = $fnSql." WHERE COMMUNITY_PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateCommunityProfileName()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileName()] Successfully updated community profile name");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileName()] Unable to update community profile name");
						return 0;
					}//++else end
					
			   }//++public function updateCommunityProfileName() end
			   
			   public function updateCommunityProfileIntro($fnProfileId,$fnProfileIntroStr){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileIntro()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE COMMUNITY_BASIC_INFO_INDEPTH SET";
					
					if(  null == $fnProfileIntroStr  ){
					    Middatabase::loghandler("[Middatabase] [updateCommunityProfileIntro()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileIntroStr ){
					    $fnSql = $fnSql."  	COMMUNITY_DESCRIPTION='".$fnProfileIntroStr."'";
					}//if end
					
					$fnSql = $fnSql." WHERE COMMUNITY_PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateCommunityProfileIntro()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileIntro()] Successfully updated community profile intro");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileIntro()] Unable to update community profile intro");
						return 0;
					}//else end
					
			   }//++public function updateCommunityProfileIntro() end
			   
			   public function updateCommunityProfileCategory($fnProfileId,$fnProfileCategoryID){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileCategory()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE COMMUNITY_CATEGORY_INFO SET";
					
					if(  null == $fnProfileCategoryID  ){
					    Middatabase::loghandler("[Middatabase] [updateCommunityProfileCategory()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileCategoryID ){
					    $fnSql = $fnSql."   COMMUNITY_CATEGORY_ID='".$fnProfileCategoryID."'";
					}//if end
					
					$fnSql = $fnSql." WHERE COMMUNITY_PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateCommunityProfileCategory()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileCategory()] Successfully updated community profile category id");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileCategory()] Unable to update community profile id");
						return 0;
					}//else end
					
			   }//++public function updateCommunityProfileCategory() end
			   
			   public function updateCommunityProfileCountry($fnProfileId,$fnProfileCountry){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileCountry()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//++Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE COMMUNITY_BASIC_INFO_INDEPTH SET";
					
					if(  null == $fnProfileCountry  ){
					    Middatabase::loghandler("[Middatabase] [updateCommunityProfileCountry()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfileCountry ){
					    $fnSql = $fnSql."   COMMUNITY_COUNTRY='".$fnProfileCountry."'";
					}//if end
					
					$fnSql = $fnSql." WHERE COMMUNITY_PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateCommunityProfileCountry()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileCountry()] Successfully updated community profile country");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateCommunityProfileCountry()] Unable to update community profile country");
						return 0;
					}//++else end
					
			   }//++public function updateCommunityProfileCountry() end
			   
			   public function updateCommunityProfilePlace($fnProfileId,$fnProfilePlace){
					
					if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [updateCommunityProfilePlace()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					$fnRtCode =0;
					//Step1: Add User Basic Info
					$fnSql = NULL;
					$fnSql = "UPDATE COMMUNITY_BASIC_INFO_INDEPTH SET";
					
					if(  null == $fnProfilePlace  ){
					    Middatabase::loghandler("[Middatabase] [updateCommunityProfilePlace()] Invalid Param Found");
						return 0;
					}//if end
					
					if( null != $fnProfilePlace ){
					    $fnSql = $fnSql."   COMMUNITY_PLACE='".$fnProfilePlace."'";
					}//if end
					
					$fnSql = $fnSql." WHERE COMMUNITY_PROFILE_ID='".$fnProfileId."';";
					Middatabase::loghandler("[Middatabase] [updateCommunityProfilePlace()] SQL: ".$fnSql );
					
					$fnSqlConditionArray=NULL;
					$fnSqlConditionType="AND";
					$fnSqlOrderByArray=NULL;
					$fnSqlParamArray=NULL;
					
					$fnRtCode = $this->GenDBOperationObj->GenDBUpdateOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType="AND",$fnSqlOrderByArray=NULL,$fnSqlParamArray=NULL); 
					
					if(  1 == $fnRtCode  ){
						Middatabase::loghandler("[Middatabase] [updateCommunityProfilePlace()] Successfully updated community profile place");
						return 1;
					}else{
						Middatabase::loghandler("[Middatabase] [updateCommunityProfilePlace()] Unable to update community profile place");
						return 0;
					}//else end
					
			   }//++public function updateCommunityProfilePlace() end
			   
			   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			   
			   public function getProfileNameListByName($fnProfileName,$fnProfileType=1){
				    
				    if( NULL == $this->GenDBOperationObj ){
						Middatabase::loghandler("[Middatabase] [getProfileNameListByName()] Valid Database Connection Not found");
						return 0;
					}//++if end
					
					if( NULL == $fnProfileName ){
						Middatabase::loghandler("[Middatabase] [getProfileNameListByName()] Valid Profile ID not found");
						return 0;
					}//++if end
					
					$sqlCond=null;
				    $fnSqlConditionArray = null;
					$fnSqlOrderByArray   = null;
					$fnSql = NULL;
					if( 1 == $fnProfileType ){ //++Profile Type is User
					
    					$fnSql = 'SELECT USER_BASIC_INFO.PROFILE_ID,
                                         USER_BASIC_INFO.ISACOMMUNITY,
                                         USER_BASIC_INFO.USER_FIRST_NAME,
                                         USER_BASIC_INFO.USER_LAST_NAME
                                         FROM  USER_BASIC_INFO
                                         WHERE ( USER_BASIC_INFO.USER_FIRST_NAME LIKE "%'.$fnProfileName.'%" OR 
                                               USER_BASIC_INFO.USER_LAST_NAME LIKE "%'.$fnProfileName.'%" )  OR
                                               CONCAT(USER_BASIC_INFO.USER_FIRST_NAME," ",USER_BASIC_INFO.USER_LAST_NAME) LIKE "%'.$fnProfileName.'%" 
                                               AND USER_BASIC_INFO.ISACOMMUNITY="0"';
                                               
					}else if( 2 == $fnProfileType ){ //++Profile Type is User or community/business
					
					    $fnSql = 'SELECT COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_PROFILE_ID,
                                         COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_NAME
                                         FROM  COMMUNITY_BASIC_INFO_INDEPTH
                                         WHERE COMMUNITY_BASIC_INFO_INDEPTH.COMMUNITY_NAME LIKE "%'.$fnProfileName.'%"';
					}//else if end                
					$fnSqlConditionType="OR";
					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray,$fnSqlConditionType,$fnSqlOrderByArray); 
					
			   }//++public function getProfileNameListByName() end
			   
			   public function createWebRtcEntry($fnWebRtcDataArray=NULL){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [createWebRtcEntry()] Valid Database Connection Not found");
							return 0;
						}//++if end
						
						$str        = "";
						$str        = $fnWebRtcDataArray["sender"].$fnWebRtcDataArray["receiever"].$fnWebRtcDataArray["event"].$fnWebRtcDataArray["data"].date("Y-m-d").date("H:i:s");
						$fnWebRTCID = "WEBRTC".CreateId::getIDType1(6,$str);
						Middatabase::loghandler("[Middatabase] [createWebRtcEntry()] WebRTC ID:           ".$fnWebRTCID );
						Middatabase::loghandler("[Middatabase] [createWebRtcEntry()] Sender   ProfileID:  ".$fnWebRtcDataArray["sender"] );
						Middatabase::loghandler("[Middatabase] [createWebRtcEntry()] Receiver ProfileID:  ".$fnWebRtcDataArray["receiever"] );
						Middatabase::loghandler("[Middatabase] [createWebRtcEntry()] Event:               ".$fnWebRtcDataArray["event"] );
						Middatabase::loghandler("[Middatabase] [createWebRtcEntry()] Data:                ".$fnWebRtcDataArray["data"] );
						
						$fnSql = NULL;
						$fnSql = $this->SQL_List["WEBRTC_BASIC_INSERT_SQL"];
						$fnSqlParamArray = NULL;
						$fnSqlParamArray = array();
						$fnSqlParamArray["WEBRTC_EVENT_ID"]        = $fnWebRTCID;
						$fnSqlParamArray["SENDER_PROFILE_ID"]      = $fnWebRtcDataArray["sender"];
						$fnSqlParamArray["RECEIVER_PROFILE_ID"]    = $fnWebRtcDataArray["receiever"];
						$fnSqlParamArray["WEBRTC_EVENT"]           = $fnWebRtcDataArray["event"];
						$fnSqlParamArray["WEBRTC_DATA"]            = $fnWebRtcDataArray["data"];
					    $fnSqlParamArray["CREATION_DATE"]          = date("Y-m-d");
						$fnSqlParamArray["CREATION_TIME"]          = date("H:i:s");
						
						$rtcode = 0;
						Middatabase::loghandler("[Middatabase] [createWebRtcEntry()] SQL: ".$fnSql );
						$this->beginTransaction();
						$fnSqlRtCode =  $this->GenDBOperationObj->GenDBInsertOperation($fnSql,$fnSqlParamArray); 
						if( 1 == $fnSqlRtCode){
							Middatabase::loghandler("[Middatabase] [createWebRtcEntry()] WEBRTC entry create success" );
							$rtcode = 1;
                            $this->commitTransaction();
                            return $rtcode ;
						}else{
							Middatabase::loghandler("[Middatabase] [createWebRtcEntry()] WEBRTC entry create failed" );
							$this->rollBackTransaction();
							return $rtcode ;
						}//++else end
					
			    }//++function createWebRtcEntry() end
			    
			   public function getWebRtcEntry($fnReceiverProfileId){
						
						if( NULL == $this->GenDBOperationObj ){
							Middatabase::loghandler("[Middatabase] [getWebRtcEntry()] Valid Database Connection Not found");
							return 0;
						}//++if end
						$fnSql = "SELECT WEBRTC_INFO.WEBRTC_EVENT_ID,
                                         WEBRTC_INFO.SENDER_PROFILE_ID,
                                         WEBRTC_INFO.RECEIVER_PROFILE_ID,
                                         WEBRTC_INFO.WEBRTC_EVENT,
                                         WEBRTC_INFO.WEBRTC_DATA,
                                         WEBRTC_INFO.CREATION_DATE,
                                         WEBRTC_INFO.CREATION_TIME
                                     From WEBRTC_INFO";
                        $fnBeforeTime = date("H:i:s", strtotime("-30 second"));
    					if( NULL!=$fnReceiverProfileId ){
    						$fnSql= $fnSql." WHERE WEBRTC_INFO.RECEIVER_PROFILE_ID='".$fnReceiverProfileId."' AND WEBRTC_INFO.CREATION_DATE='".date("Y-m-d")."' AND ( WEBRTC_INFO.CREATION_TIME<='".date("H:i:s")."' AND WEBRTC_INFO.CREATION_TIME>='".$fnBeforeTime."' )  ORDER BY CREATION_TIME ASC,WEBRTC_EVENT DESC;";
    					}//++if end
    					$fnSqlConditionType ="OR";
    					return $this->GenDBOperationObj->GenDBSelectOperation($fnSql,$fnSqlConditionArray=NULL,$fnSqlConditionType);
					
			    }//++function getWebRtcEntry() end
			   
			   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			   
               public static function loghandler($fnlogmssg){
    			    Logger::trace($fnlogmssg);
			   }//++public function Middatabase::loghandler() end
			 
	   }//++class Middatabase end
	   
	   function TestMiddatabase(){
			
			//https://stackoverflow.com/questions/5628735/get-the-date-of-one-week-from-today
		    //echo date("Y-m-d", strtotime("-1 week"));
			//return;
			
		    $fnMiddatabaseObj = new  Middatabase();
			$fnMiddatabaseObj ->connectDB();
			
			//$fnMiddatabaseObj ->setPostLikeDislikeByUser($fnProfileId="pf3kis1s",$fnPostId="PS1",$fnLikes=0);
			//$fnMiddatabaseObj ->setPostRatingByUser($fnProfileId="pf3kis1s",$fnPostId="PS1",$fnRatingValue=1);
			//$fnMiddatabaseObj ->updateProfileBasic($fnProfileId="pf3kis3s",$fnfname="Suvam",$fnlname=NULL,$fnMobileId=NULL,$fnEmailId=NULL);
			
			/*
			$fnRegisterDataArray= array();
			$fnRegisterDataArray["PROFILE_ID"]            = "pf3kis3s";
			$fnRegisterDataArray["INSTITUTE_NAME"]        = "BNNV";
			$fnRegisterDataArray["EDUCATION_CATEGORY"]    = "HighSchool";
			$fnRegisterDataArray["DEGREE"]                = "NA";
			$fnRegisterDataArray["SUBJECT"]               = "NA";
			$fnRegisterDataArray["START_DATE"]            = "2018-03-02";
			$fnRegisterDataArray["END_DATE"]              = "2018-11-24";
			$fnMiddatabaseObj ->setProfileEducation($fnProfileId="pf3kis3s",$fnRegisterDataArray);
			
			
			$fnRegisterDataArray= array();
			$fnRegisterDataArray["PROFILE_ID"]            = "pf3kis3s";
			$fnRegisterDataArray["COMPANY_NAME"]          = "Infosys";
			$fnRegisterDataArray["DESIGNATION"]           = "Associate Engineeer";
			$fnRegisterDataArray["ROLES"]                 = "Doing Mobile Jobs";
			$fnRegisterDataArray["START_DATE"]            = "2018-03-02";
			$fnRegisterDataArray["END_DATE"]              = "2018-11-24";
			$fnMiddatabaseObj ->setProfileEmployment($fnProfileId="pf3kis3s",$fnRegisterDataArray);
			
			
			$fnRegisterDataArray= array();
			$fnRegisterDataArray["PROFILE_ID"]            = "pf3kis3s";
			$fnRegisterDataArray["AWARD_NAME"]            = "Nobel";
			$fnRegisterDataArray["AWARD_TOPIC"]           = "Physics";
			$fnRegisterDataArray["AWARD_DATE"]            = "2018-03-02";    
		    $fnMiddatabaseObj ->setProfileAwards($fnProfileId="pf3kis3s",$fnRegisterDataArray);
		    */
		    
		    /*
					Favourite Actor     : 1
					Favourite Actress   : 2
					Favourite Movies    : 3
					Favourite WebSeries : 4
					Favourite TvShows   : 5
					Favourite Sports    : 6
					Favourite Sportsman : 7
					Favourite TvChanel  : 8
			*/
			
		    $fnRegisterDataArray= array();
			$fnRegisterDataArray["PROFILE_ID"]            = "pf3kis3s";
			$fnRegisterDataArray["FAVOURITE_CATEGORY"]    = "1";
			$fnRegisterDataArray["FAVOURITE_NAME"]        = "Tom Cruise";
		    $fnMiddatabaseObj ->setProfileFavourite($fnProfileId="pf3kis3s",$fnRegisterDataArray);
		    
		    $fnRegisterDataArray= null;
		    $fnRegisterDataArray= array();
			$fnRegisterDataArray["PROFILE_ID"]            = "pf3kis3s";
			$fnRegisterDataArray["FAVOURITE_CATEGORY"]    = "2";
			$fnRegisterDataArray["FAVOURITE_NAME"]        = "Kate Winslet";
		    $fnMiddatabaseObj ->setProfileFavourite($fnProfileId="pf3kis3s",$fnRegisterDataArray);
		    
		    $fnRegisterDataArray= null;
		    $fnRegisterDataArray= array();
			$fnRegisterDataArray["PROFILE_ID"]            = "pf3kis3s";
			$fnRegisterDataArray["FAVOURITE_CATEGORY"]    = "9";
			$fnRegisterDataArray["FAVOURITE_NAME"]        = "Stamp Collector";
		    $fnMiddatabaseObj ->setProfileFavourite($fnProfileId="pf3kis3s",$fnRegisterDataArray);
			
            $fnMiddatabaseObj ->disconnectDB();
            
	   }//++function TestMiddatabase() End
	   
?>