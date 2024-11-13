# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
p "Cleaning the db"
Restaurant.destroy_all

p "Creating the restaurants"
p Restaurant.create(name: "le Zanelli", address: "3 place de la république, 69001 Lyon", category:"italian", phone_number: "+33472857548", rating: 7)
p Restaurant.create(name: "Kebab de l'angle", address: " 62 Gd Rue de la Croix-Rousse, 69004 Lyon", category: "french", phone_number: "+33472857545", rating: 5)
p Restaurant.create(name: "PekinExpress", address: "95 rue Pasteur, 69300 Caluire", category: "chinese", phone_number: "+33472857547", rating: 9)

p "Finished !!"
p "#{Restaurant.count} restaurants created"
