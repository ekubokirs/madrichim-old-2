class TeacherMidYearForm
  include MongoMapper::Document


  timestamps!
  
  belongs_to :teacher
  belongs_to :teacher
end
