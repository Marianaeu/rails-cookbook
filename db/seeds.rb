# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "cleaning DB..."
Recipe.destroy_all
puts "creating new recipes..."
Recipe.create(title: "Spaghetti Carbonara", description: "Classic Italian pasta with eggs, cheese, pancetta, and pepper.", image_url: "https://images.unsplash.com/photo-1579631542720-3a87824fff86?q=80&w=3164&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: 4.7),
Recipe.create(title: "Chicken Tikka Masala", description: "Creamy tomato-based Indian curry with grilled chicken.", image_url: "https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: 4.8),
Recipe.create(title: "Avocado Toast", description: "Sourdough toast topped with avocado, chili flakes, and a drizzle of olive oil.", image_url: "https://images.unsplash.com/photo-1632217471220-a661da2ae319?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: 4.5),
Recipe.create(title: "Chocolate Lava Cake", description: "Decadent dessert with a warm, gooey chocolate center.", image_url: "https://images.unsplash.com/photo-1511911063855-2bf39afa5b2e?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: 4.9)
puts "#{Recipe.count} recipes created!"
