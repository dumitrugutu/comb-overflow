require 'bcrypt'

class User < ActiveRecord::Base
  validates :display_name, presence: true, uniqueness: true
  validates :email, presence:true, uniqueness: true
  validates :password, presence: true

  validate :password_must_be_longer_than_six_characters

  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(provided_string)
    @plaintext = provided_string
    new_password = BCrypt::Password.create(provided_string)
    self.hashed_password = new_password
  end

  def authenticate(input_password)
    self.password == input_password
  end

  def password_must_be_longer_than_six_characters
    errors.add(:password, "must be longer than six characters") unless @plaintext && @plaintext.length > 6
  end
end
