class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :commented_user
  has_one :commented_post
  has_one :commented_user

end
