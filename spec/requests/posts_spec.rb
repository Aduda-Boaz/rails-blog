require 'rails_helper'

RSpec.describe 'Posts Tests', type: :request do
  context 'Index' do
    before(:each) do
      get '/users/1/posts'
    end
    it 'Redirects correctly to index' do
      expect(response).to render_template(:index)
    end
    it 'is a success status' do
      expect(response).to have_http_status(:ok)
    end
    it 'Includes correct placeholder text.' do
      expect(response.body).to include('Welcome to my first post')
    end
  end
  context 'Show' do
    before(:each) do
      get '/users/1/posts/7'
    end
    it 'Redirects correctly to Show' do
      expect(response).to render_template(:show)
    end
    it 'is a success status' do
      expect(response).to have_http_status(:ok)
    end
    it 'Includes correct placeholder text.' do
      expect(response.body).to include('Good morning all')
    end
  end
end
