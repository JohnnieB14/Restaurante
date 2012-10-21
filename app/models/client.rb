class Client < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  attr_accessible :email, :name, :password, :password_confirmation, :surname

  before_save { |client| client.email = email.downcase }

  has_many :orders

  has_secure_password 

  validates :email, format: { with: VALID_EMAIL_REGEX }, length: { maximum: 30, minimum: 1 }, presence: true, uniqueness: { case_sensitive: false }
  validates :name, length: { maximum: 40, minimum: 1 }, presence: true  
  validates :password, length: { minimum: 6 }, presence: true 
  validates :password_confirmation, presence: true
end
