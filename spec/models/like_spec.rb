require 'rails_helper'

Rspec.describe Like, type: :model do
  before :each do
    @user = User.create(name: 'Philip', photo: 'https://...', bio: 'physician from Britain')
    @post = Post.create(author_id: @user.id, title: 'My first post', body: 'This is my first post')
    @like = Like.create(user_id: @user.id, post_id: @post.id)
  end

  it 'Validates the presence of User' do
    @like.user_id = nil
    expect(@like).to_not be_valid
  end

  it 'Validates the presence of Post' do
    @like.post_id = nil
    expect(@like).to_not be_valid
  end

  it 'Validates the increament of a like counter' do
    expect(@like.post.likes_count).to eq(1)
  end
end
