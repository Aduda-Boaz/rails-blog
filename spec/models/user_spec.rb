require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Philip', photo: 'https://...', bio: 'physician from Britain') }

  before { subject.save }

  describe 'Validation' do
    it 'Name must not be empty' do
      subject.name = ''
      expect(subject).to_not be_valid
    end
  end

  it 'Validates the presence of Name' do
    subject.name = nill
    expect(subject).to_not be_valid
  end

  it 'Validates' do
    post = Post.new(auhtor_id: subject.id, title: 'My first post', body: 'This is my first post')
    expect(subject.recent_posts).to eq([post])
  end

  it 'Validates the post_count to be an integer' do
    type = subject.post_count.class
    expect(type).to eq(Integer)
  end
end
