# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all

20.times do |index|
	doc = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.name, postal_code:Faker::Address.zip_code )
end

100.times do |index|
	pat = Patient.create!(first_name: Faker::RickAndMorty.location, last_name: Faker::RickAndMorty.quote)
end

100.times do |index|
	rdv = Appointment.create!(appointment_date: index, doctor_id: rand(Doctor.first.id..Doctor.last.id), patient_id: rand(Patient.first.id..Patient.last.id) )
end

2.times do |index|
	citi = City.create!()
end

2.times do |index|
	spec = Specialty.create!()
end

2.times do |index|
	ds = Doctor_Specialty.create!()
end