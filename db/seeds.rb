Patient.destroy_all
Doctor.destroy_all
Office.destroy_all
Specialty.destroy_all
DoctorReview.destroy_all


gender_identities = ["male", "female", "gender fluid", "transmasculine", "transfeminine", "non-binary", "gender non-conforming", "agender", "transgender man", "transgender woman", "undisclosed" ]

10.times do 
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, date_of_birth: Faker::Date.backward(10000), gender_identity: gender_identities.sample, phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email, password: "password")
end 

10.times do
	Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, years_practicing: rand(1..40), password: "password")
end 

10.times do
	Office.create(name: Faker::Company.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
end 

specialties = ["urology", "plastic surgery", "endocrinology", "mental health", "internal medicine", "family medicine", "general surgery"]


specialties.each do |specialty|
	Specialty.create(title: specialty, description: "a sub-field of medicine")
end 

20.times do 
	DoctorReview.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, rating: rand(1..5), doctor_id: rand(1..20), patient_id: rand(1..20))
end 

20.times do 
	DoctorsOffice.create(doctor_id: rand(1..10) , office_id: rand(1..10))
end 

20.times do 
	DoctorsSpecialty.create(doctor_id: rand(1..10) , specialty_id: rand(1..7))
end 