class Teacher < User
  include MongoMapper::Document
  
  key :class_taught,	String


  def create(data)
		data[:user_type] = "teacher"
		super data
	end

  many :teacher_mid_year_forms
  many :teacher_end_year_forms

end
