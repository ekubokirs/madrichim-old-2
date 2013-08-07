class User
  include MongoMapper::Document
 
 key 	:email,				String
 key 	:fish,				String
 key 	:salt, 				String
 key 	:secret_code,	String
 key	:expires_at,	Time



end
