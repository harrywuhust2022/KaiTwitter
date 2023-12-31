class Post < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :body, presence: true
end
