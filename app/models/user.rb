class User
  include MongoMapper::Document

  before_save :encrypt_password

  attr_accessor :password, :password_confirmation

  key 	:first_name,	String
  key 	:last_name,		String
  key 	:email,				String
  key 	:fish,				String
  key 	:salt, 				String
  key		:user_type,		String
  key 	:code,	      String
  key	  :expires_at,	Time

	def self.authenticate(email, password)
		# find user by email
		user = User.all(email: email).first
		if user
			# runs the entered password through the salt
			fish = BCrypt::Engine.hash_secret(password, user.salt)
			
			# if the password entered gets passed through the salt and returned as the same, the user is true
			if user.fish == fish
				return user
			end
		end
			
		nil
	end

	private

	# encrypts password so it is never stored as entered
	def encrypt_password
		unless password.blank?
			self.salt = BCrypt::Engine.generate_salt
			self.fish = BCrypt::Engine.hash_secret(self.password, self.salt)
			password = nil
		end
	end
end
