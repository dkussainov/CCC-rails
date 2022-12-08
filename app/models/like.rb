class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :liked, uniqueness: {scope: :user}
end
