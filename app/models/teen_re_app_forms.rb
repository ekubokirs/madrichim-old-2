class TeenReAppForms
  include MongoMapper::Document

   timestamps!

   belongs_to	:teen
end
