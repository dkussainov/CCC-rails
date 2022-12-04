class PostSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :description, :is_liked

  has_many :likes
  has_many :comments
  
 
  
end
