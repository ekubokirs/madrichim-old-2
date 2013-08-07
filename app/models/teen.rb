class Teen
  include MongoMapper::Document
  
  key :first_name,	String
  key :last_name,		String
  key :born_on,			Date

  many	:teen_mid_year_forms
  many	:teen_end_year_forms
  one		:teen_new_app_form
  one		:teen_termination_form


end


