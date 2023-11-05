class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    validates :firstname, presence: true
    validates :secondname, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
