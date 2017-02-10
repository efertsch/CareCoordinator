Patient.create(first_name: "Billy", last_name: "Jean", date_of_birth: Date.today, gender_identity: "Undisclosed", phone_number: "87657685", email: "jgjhgj", password: "password")
Patient.create(first_name: "Bobby", last_name: "Jean", date_of_birth: Date.today, gender_identity: "Undisclosed", phone_number: "8765safa", email: "d", password: "password")
Patient.create(first_name: "Sally", last_name: "Jean", date_of_birth: Date.today, gender_identity: "Undisclosed", phone_number: "8765345s", email: "f", password: "password")

Doctor.create(first_name: "Me", last_name: "Notyou", email: "asfas", years_practicing: 1, password: "password")

Office.create(name: "Here", address: "There", phone_number: "32523", email: "fasjfga")

Specialty.create(title: "Stuff", description: "doing stuff")
Specialty.create(title: "Things", description: "doing things")


DoctorReview.create(title: "This Dr sucks", body: "super sucky. The worst", rating: 5, doctor_id: 1, patient_id: 2)
