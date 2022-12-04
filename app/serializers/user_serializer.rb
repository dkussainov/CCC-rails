class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :avatar, :bio

  has_many :posts
  
end
