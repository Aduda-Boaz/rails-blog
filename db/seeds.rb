#Create a user
first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

#Create a post
post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author_id: first_user.id, title: 'Getting Unstuck', text: 'How I figured out where I had difficulties with my code.')
third_post = Post.create(author_id: second_user.id, title: 'Hello', text: 'This is my first post')
fourth_post = Post.create(author_id: second_user.id, title: 'Great', text: 'Nice to hear you can move forward.')

#Create a comment
Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'Hi Tom!' )
Comment.create(post_id: second_post.id, author_id: first_user.id, text: 'Hi Lilly!' )
Comment.create(post_id: third_post.id, author_id: second_user.id, text: 'You are doing good!' )
Comment.create(post_id: fourth_post.id, author_id: first_user.id, text: 'Thanks for the great post!' )
Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'I am glad you are doing well!' )
Comment.create(post_id: second_post.id, author_id: first_user.id, text: 'Thank you for the help' )
