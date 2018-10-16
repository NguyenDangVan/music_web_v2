class User < ApplicationRecord
  before_save {email.downcase!}
  validates :name, :email, :password, :age, presence: true
  validates :name, length: {maximum: 30, too_long: "%{count} characters is the maximim allowed"}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: {maximum: 255},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
  validates :age, numericality: {only_integer: true}
  has_secure_password
  validates :password, length: {minimum: 6}
end
