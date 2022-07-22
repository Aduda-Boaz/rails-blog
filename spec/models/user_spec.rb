require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'physician from Britain', post_count: 0)
    @user.save
  end

  describe 'Validation' do
    it 'Name must not be empty' do
      @user.name = ''
      expect(@user).to_not be_valid
    end
  end

  it 'Validates the presence of Name' do
    @user.name = nill
    expect(@user).to_not be_valid
  end

  it 'Validates' do
    post = Post.new(auhtor_id: @user.id, title: 'My first post', body: 'This is my first post')
    expect(@user.recent_posts).to eq([post])
  end

  it 'Validates the post_count to be an integer' do
    type = @user.post_count.class
    expect(type).to eq(Integer)
  end
end
