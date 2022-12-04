class LikeSerializer < ActiveModel::Serializer
  attributes :id, :likes_num
  has_one :user
  has_one :post
end
