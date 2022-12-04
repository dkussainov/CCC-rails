class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :commented_users, through: :comments

    has_many :likes, dependent: :destroy
    has_many :users, through: :likes

    validates :image_url, presence: true
end
