# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Create a user
first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

#Create a post
first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: first_user, title: 'Getting Unstuck', text: 'How I figured out where I had difficulties with my code.')
third_post = Post.create(author: second_user, title: 'Hello', text: 'This is my first post')
fourth_post = Post.create(author: second_user, title: 'Great', text: 'Nice to hear you can move forward.')

#Create a comment
Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
Comment.create(post: second_post, author: first_user, text: 'Hi Lilly!' )
Comment.create(post: third_post, author: second_user, text: 'You are doing good!' )
Comment.create(post: fourth_post, author: first_user, text: 'Thanks for the great post!' )
Comment.create(post: first_post, author: second_user, text: 'I am glad you are doing well!' )
Comment.create(post: second_post, author: first_user, text: 'Thank you for the help' )
