require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(author_id: 1, title: 'My first post', body: 'This is my first post') }

  before { subject.save }

  it 'Validates the presence of Title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'Validates comment counter to not be a string' do
    subject.comment_count = 'great'
    expect(subject).to_not be_valid
  end

  it 'Validates the length of Title to be less than or equal to 250' do
    subject.title = 'a' * 251
    expect(subject).to_not be_valid
  end

  it 'Validates increament of post counter after creation of post' do
    user = User.create(name: 'Philip', photo: 'https://...', bio: 'physician from Britain')
    expect(user.post_count).to eq(1)
  end

  it 'Validates recent comment method' do
    comment = Comment.create(post_id: subject.id, user_id: 1, body: 'This is my first comment')
    expect(subject.recent_comments).to eq([comment])
  end
end
