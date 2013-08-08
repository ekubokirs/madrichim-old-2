class Admin < User

	def create(data)
		data[:user_type] = "admin"
		super data
	end

	many admin_interview_forms

end