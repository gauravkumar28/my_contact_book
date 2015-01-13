class User < ActiveRecord::Base 
    validates :name, presence: true, length: {maximum: 50}
    validates :phone_number, presence: true, length: {maximum: 10}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validate :email , presence: true, length: {maximum: 255}, formate: VALID_EMAIL_REGEX, uniqueness: { case_sensitive: false }
    attr_accessible :email, :name, :phone_number
end
