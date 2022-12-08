class LikeSerializer < ActiveModel::Serializer
  attributes :id, :liked
  has_one :user
  has_one :post
end
