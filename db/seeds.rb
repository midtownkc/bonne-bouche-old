# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

grocery_sections = [
  'Bakery', 'Baking', 'Canned', 'Condiments', 'Cracker', 'Dairy', 'Deli',
  'Dry Goods', 'Ethnic', 'Frozen', 'Meat', 'Produce', 'Spices'
]

grocery_sections.each do |section|
  GrocerySection.create(name: section)
end
