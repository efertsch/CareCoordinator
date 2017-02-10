class Patient < ActiveRecord::Base
  has_many :doctor_reviews
  has_many :doctors, through: :doctor_reviews
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
