class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  attr_accessible :email, :name, :password, :password_confirmation, :privileges, :surname
  
  before_save { |user| user.email = email.downcase }

  has_secure_password 
    
  validates :email, format: { with: VALID_EMAIL_REGEX }, length: { maximum: 30, minimum: 1 }, presence: true, uniqueness: { case_sensitive: false }
  validates :name, length: { maximum: 40, minimum: 1 }, presence: true  
  validates :password, length: { minimum: 6 }, presence: true 
  validates :password_confirmation, presence: true
end
