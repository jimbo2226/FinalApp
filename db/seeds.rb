# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: 'james@example.com',
            password: 'password',
            password_confirmation: 'password',
            name: 'James',
            role: User.roles[:admin])
User.create(email: 'john@doe.com',
            password: 'password',
            password_confirmation: 'password',
            name: 'John Doe')
            

10.times do |x|
    book = Book.create(title: "Title #{x}",
        discription: "Discription #{x} the words go here",
        author: "Author #{x} Who wrote this book",
        user_id: User.first.id)

end
