require 'rails_helper'

RSpec.describe Comment, type: :model do
  before :each do
    @user = User.create(name: 'Philip', photo: 'https://...', bio: 'physician from Britain')
    @post = Post.create(author_id: @user.id, title: 'My first post', body: 'This is my first post')
    @comment = Comment.create(user_id: @user.id, post_id: @post.id, body: 'This is my first comment')
  end

  it 'Validates the presence of User' do
    @comment.user_id = nil
    expect(@comment).to_not be_valid
  end

  it 'Validates the presence of Post' do
    @comment.post_id = nil
    expect(@comment).to_not be_valid
  end

  it 'Validates the comment increament after creation' do
    expect(@comment.post.comment_count).to eq(1)
  end
end
