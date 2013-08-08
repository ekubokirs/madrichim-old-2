class Teacher
  include MongoMapper::Document
  
  key :first_name,		String
  key :last_name,			String
  key :class_taught,	String

  many :teacher_mid_year_forms
  many :teacher_end_year_forms

end
