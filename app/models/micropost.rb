class Micropost
  include MongoMapper::Document

  key :content, String
  key :user_id, ObjectId

  validates :content, :length => { :maximum => 140 }

  belongs_to :user
end
