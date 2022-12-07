class User < ApplicationRecord
    # has_many :posts
    has_many :likes
    has_many :posts, through: :likes

    has_many :comments
    has_many :commented_posts, through: :comments

    validates :username, presence: true, uniqueness: true


    has_secure_password
end
