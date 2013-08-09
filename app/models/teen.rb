class Teen < User
  include MongoMapper::Document
  
  key :born_on,			Date
  key :zipcode,     Integer
  key :home_phone, 	String
  key :cell_phone,		String
  key :size,        String

  def create(data)
    data[:user_type] = "teen"
    super data
  end
  

  many	:teen_mid_year_forms
  many	:teen_end_year_forms
  one		:teen_new_app_form
  one		:teen_termination_form


end


