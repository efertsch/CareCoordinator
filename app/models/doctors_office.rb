class DoctorsOffice < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :office
end
