class LikeSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :user_id
  has_one :user
  has_one :post
end
