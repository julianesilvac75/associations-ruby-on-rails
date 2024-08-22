# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
d1 = Doctor.create(name: "Estranho 2")
d2 = Doctor.create(name: "Banner 2")

p1 = Patient.create(name: "João")
p2 = Patient.create(name: "Maria")

Appointment.create(doctor: d1, patient: p1, date: Date.today)
Appointment.create(doctor: d2, patient: p2, date: Date.today)
Appointment.create(doctor: d1, patient: p2, date: Date.today)
Appointment.create(doctor: d2, patient: p1, date: Date.today)

s1 = Supplier.create(name: "Diego")

a1 = Account.create(number: 144, supplier: s1)

AccountHistory.create(date: Date.today, account: a1)
