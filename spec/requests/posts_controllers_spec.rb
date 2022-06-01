require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET post#index" do
    before(:example) { get '/users/1/posts' }

    it "valid response" do
      expect(response).to have_http_status(200)
    end

    it "renders 'posts#index' template" do
      expect(response).to render_template('index')
    end

    it "Should render with 'List of All Posts from the user'" do
      expect(response.body).to include('List of All Posts from the user')
    end
  end

  describe 'GET post#show' do
    before(:example) { get '/users/1/posts/1' }

    it 'valid response' do
      expect(response).to have_http_status(200)
    end

    it "renders 'posts#show' template" do
      expect(response).to render_template('show')
    end

    it "should rrender with 'Post by User'" do
      expect(response.body).to include('Post by User')
    end
  end
end
