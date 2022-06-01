require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET users#index' do
    before(:example) { get users_path }
    it 'it is success' do
      expect(response).to have_http_status(200)
    end

    it "renders 'users#index' template" do
      expect(response).to render_template('index')
    end

    it "should render with 'List of All Users" do
      expect(response.body).to include('List of All Users')
    end
  end
  describe 'GET users#show' do
    before(:example) { get '/users/1' }
    it 'valid response' do
      expect(response).to have_http_status(200)
    end

    it "renders 'users#show' template" do
      expect(response).to render_template('show')
    end

    it "should render with 'Number of Posts" do
      expect(response.body).to include('Number of Posts')
    end
  end
end
