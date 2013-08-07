class Registrant
  include MongoMapper::Document
 
 key 	:email,				String
 key 	:fish,				String
 key 	:salt, 				String
 key 	:code,				String
 key	:expires_at,	Time


end
