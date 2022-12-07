class PostSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :description

  belongs_to :user
  has_many :likes
  has_many :comments
  
 
  
end
