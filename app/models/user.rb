class User
  include MongoMapper::Document

  key 	:first_name,	String
  key 	:last_name,		String
  key 	:email,				String
  key 	:fish,				String
  key 	:salt, 				String
  key		:user_type,		String
  key 	:code,	      String
  key	  :expires_at,	Time


end
