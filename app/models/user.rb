class User
  include MongoMapper::Document

  key 	:email,				String
  key 	:fish,				String
  key 	:salt, 				String
  key		:role,				Array
  key 	:code,	      String
  key	  :expires_at,	Time

  def role
  end

end
