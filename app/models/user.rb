require 'bcrypt'

class User < ActiveRecord::Base
  validates :email, presence: true
  validates :password, presence: true

  validate :password_must_be_longer_than_six_characters

  def password
    @password ||= BCrypt::Password.new(encrypted_password)
  end

  def password=(provided_string)
    @plaintext = provided_string
    hashed_password = BCrypt::Password.create(provided_string)
    self.encrypted_password = hashed_password
  end

  def authenticate(input_password)
    self.password == input_password
  end

  def password_must_be_longer_than_six_characters
    errors.add(:password, "must be longer than six characters") unless @plaintext && @plaintext.length > 6
  end
end
