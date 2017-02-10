class Doctor < ActiveRecord::Base
  has_and_belongs_to_many :offices
  has_many :doctor_reviews
  has_many :patients, through: :doctor_reviews
  has_and_belongs_to_many :specialties

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
