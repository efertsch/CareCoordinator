class Doctor < ActiveRecord::Base
  has_many :doctors_offices
  has_many :offices, through: :doctors_offices
  has_many :doctor_reviews
  has_many :patients, through: :doctor_reviews
  has_many :doctors_specialties
  has_many :specialties, through: :doctors_specialties

  validates :email, uniqueness: true 

  def password 
    @password ||= BCrypt::Password.new(password_hash)
  end 

  def password=(plain_text_password)
    @password = BCrypt::Password.create(plain_text_password)
    self.password_hash = @password 
  end 

  def self.authenticate(email, password)
    valid_user = User.find_by(email: email)
    valid_user.password == password ? valid_user : nil 
  end 

end
