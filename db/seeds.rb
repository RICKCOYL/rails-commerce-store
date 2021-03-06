# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user = User.new(
    id: 2,
    email: "read@gmail.com",
    password: "123456",
    password_confirmation: "123456",
)

user.save!

Product.create!([{
    id: 1,
    title: "Product 1",
    description: "Description 1",
    price: 1.00,
    brand: "Apple",
    model: "iPhone X",
    conditon: "New",
    image:  ActionController::Base.helpers.image_path("product1.jpg"),
    user_id: user.id,
    quantity: 10,
}, {
    id: 2,
    title: "Product 2",
    description: "Description 2",
    price: 2.00,
    brand: "Samsung",
    model: "Galaxy S10",
    conditon: "New",
    image: ActionController::Base.helpers.image_path("product2.jpg"),
    user_id: user.id,
    quantity: 10
}, {
    id: 3,
    title: "Product 3",
    description: "Description 3",
    price: 3.00,
    brand: "LG",
    model: "G7",
    conditon: "New",
    image: ActionController::Base.helpers.image_path("product3.jpg"),
    user_id: user.id,
    quantity: 5
}
])