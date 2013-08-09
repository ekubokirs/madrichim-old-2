class AdminInterviewForm
  include MongoMapper::Document

  timestamps!

  belongs_to admin
end
