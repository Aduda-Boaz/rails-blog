require 'rails_helper'

RSpec.describe 'Users Tests', type: :request do
  context 'Index' do
    before(:each) do
      get '/users'
    end
    it 'Redirects correctly to index' do
      expect(response).to render_template(:index)
    end
    it 'is a success status' do
      expect(response).to have_http_status(:ok)
    end
    it 'Includes correct placeholder text.' do
      expect(response.body).to include('Hello, great User of Ruby on rails')
    end
  end
  context 'Show' do
    before(:each) do
      get '/users/1'
    end
    it 'Redirects correctly to Show' do
      expect(response).to render_template(:show)
    end
    it 'is a success status' do
      expect(response).to have_http_status(:ok)
    end
    it 'Includes correct placeholder text.' do
      expect(response.body).to include('Please continue learning ruby on rails')
    end
  end
end
