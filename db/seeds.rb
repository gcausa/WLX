require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
pedro = User.new(email: "pedro@mail.com", password: '123456789', first_name: 'Pedro', last_name: 'Fernandez', avatar: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2000&q=80')
hernan = User.new(email: 'hernan@mail.com', password: '123456789', first_name: 'Hernán', last_name: 'Ayala', avatar: 'https://images.unsplash.com/photo-1564564244660-5d73c057f2d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80')

Course.create(title: "Data Science", company: Company.find_by(name:"IBM"), category: 1)
Course.create(title: "Data Science", company: Company.find_by(name:"Globant"), category: 1)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 1)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 2)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 2)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 2)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 3)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 3)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 3)

15.times do
  Question.create(course: Course.all.sample, assignment: Faker::TvShows::TheExpanse.quote, correct_answer: [true, false].sample)
end

#Companies
ibm = Company.create(name: "IBM", image: "https://tentulogo.com/wp-content/uploads/IBM-logo-FB.jpg")
globant = Company.create(name: "Globant", image: "https://emprendedoresnews.com/wp-content/uploads/2020/01/company_5d7c04ad08a25a53fd4d5987.png")
auth0 = Company.create(name: "Auth0", image: "https://cms-assets.tutsplus.com/uploads/users/769/posts/31134/preview_image/auth0.png")

#Courses
Course.create(title: "Data Science", company: ibm, category: 'data_science')
Course.create(title: "Data Science", company: globant, category: 'data_science')
Course.create(title: "Data Science", company: auth0, category: 'data_science')
