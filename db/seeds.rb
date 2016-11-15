# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times do
	Category.create(title:Faker::Commerce.department)
end

20.times do
	current_id = 1
	20.times do
		Article.create(name:Faker::Commerce.product_name,body:Faker::Hipster.paragraph(12, true, 4), price:Faker::Commerce.price, category_id:current_id)
		current_id += 1
		p current_id
	end
end
