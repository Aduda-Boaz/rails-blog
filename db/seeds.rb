#Create a user
require 'json'

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

first_like= Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: second_post.id, author_id: second_user.id)
Like.create(post_id: third_post.id, author_id: first_user.id)
Like.create(post_id: fourth_post.id, author_id: second_user.id)
Like.create(post_id: fifth_post.id, author_id: second_user.id)
Like.create(post_id: sixth_post.id, author_id: first_user.id)
Like.create(post_id: seventh_post.id, author_id: second_user.id)
Like.create(post_id: eighth_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: second_post.id, author_id: second_user.id)
Like.create(post_id: third_post.id, author_id: first_user.id)
Like.create(post_id: fourth_post.id, author_id: second_user.id)
Like.create(post_id: fifth_post.id, author_id: second_user.id)
Like.create(post_id: sixth_post.id, author_id: first_user.id)
Like.create(post_id: seventh_post.id, author_id: second_user.id)
Like.create(post_id: eighth_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: second_post.id, author_id: second_user.id)
Like.create(post_id: third_post.id, author_id: first_user.id)
Like.create(post_id: fourth_post.id, author_id: second_user.id)
Like.create(post_id: fifth_post.id, author_id: second_user.id)
Like.create(post_id: sixth_post.id, author_id: first_user.id)
Like.create(post_id: seventh_post.id, author_id: second_user.id)
Like.create(post_id: eighth_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: second_post.id, author_id: second_user.id)
Like.create(post_id: third_post.id, author_id: first_user.id)
Like.create(post_id: fourth_post.id, author_id: second_user.id)
Like.create(post_id: fifth_post.id, author_id: second_user.id)
Like.create(post_id: sixth_post.id, author_id: first_user.id)
Like.create(post_id: seventh_post.id, author_id: second_user.id)
Like.create(post_id: eighth_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: second_post.id, author_id: second_user.id)
Like.create(post_id: third_post.id, author_id: first_user.id)
Like.create(post_id: fourth_post.id, author_id: second_user.id)
Like.create(post_id: fifth_post.id, author_id: second_user.id)
Like.create(post_id: sixth_post.id, author_id: first_user.id)
Like.create(post_id: seventh_post.id, author_id: second_user.id)
Like.create(post_id: eighth_post.id, author_id: second_user.id)

second_like= Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: second_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: fourth_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: second_user.id)
Like.create(post_id: sixth_post.id, author_id: first_user.id)
Like.create(post_id: first_post.id, author_id: second_user.id)
Like.create(post_id: eighth_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: second_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: fourth_post.id, author_id: second_user.id)
Like.create(post_id: fifth_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: seventh_post.id, author_id: second_user.id)
Like.create(post_id: eighth_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: second_post.id, author_id: second_user.id)
Like.create(post_id: third_post.id, author_id: first_user.id)
Like.create(post_id: fourth_post.id, author_id: second_user.id)
Like.create(post_id: fifth_post.id, author_id: second_user.id)
Like.create(post_id: sixth_post.id, author_id: first_user.id)
Like.create(post_id: seventh_post.id, author_id: second_user.id)
Like.create(post_id: eighth_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: second_post.id, author_id: second_user.id)
Like.create(post_id: third_post.id, author_id: first_user.id)
Like.create(post_id: fourth_post.id, author_id: second_user.id)
Like.create(post_id: fifth_post.id, author_id: second_user.id)
Like.create(post_id: sixth_post.id, author_id: first_user.id)
Like.create(post_id: seventh_post.id, author_id: second_user.id)
Like.create(post_id: eighth_post.id, author_id: second_user.id)
Like.create(post_id: first_post.id, author_id: first_user.id)
Like.create(post_id: second_post.id, author_id: second_user.id)
Like.create(post_id: third_post.id, author_id: first_user.id)
Like.create(post_id: fourth_post.id, author_id: second_user.id)
Like.create(post_id: fifth_post.id, author_id: second_user.id)
Like.create(post_id: sixth_post.id, author_id: first_user.id)
Like.create(post_id: seventh_post.id, author_id: second_user.id)
Like.create(post_id: eighth_post.id, author_id: second_user.id)
#Output 

puts
puts('Recent posts:')
puts(first_user.recent_posts.to_json)
puts
puts('Recent comments:')
puts(first_post.recent_comments.to_json)

first_post.update_posts_count
puts
puts('Post counter: ')
puts(first_post.author.post_count)

first_comment.update_comments_count
puts('Comments counter: ')
puts(first_comment.post.comments_count)

first_like.update_likes_count
puts('likes count: ')    
puts(first_like.post.likes_count)

puts
puts('Recent posts:')
puts(second_user.recent_posts.to_json)
puts
puts('Recent comments:')
puts(fifth_post.recent_comments.to_json)

fifth_post.update_posts_count
puts
puts('Post count: ')
puts(fifth_post.author.post_count)

second_comment.update_comments_count
puts('Comments counter: ')
puts(second_comment.post.comments_count)

second_like.update_likes_count
puts('likes count: ')    
puts(second_like.post.likes_count)
