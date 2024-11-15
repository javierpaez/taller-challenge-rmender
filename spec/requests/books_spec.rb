require 'spec_helper'

RSpec.describe "Books", type: :request do
  describe "GET /index" do
    context "there books" do

      let(:book_new) { Book.create(title: 'asd', author: 'sdf', publication_date: Time.now - 1.year, rating: 4)}

      it "returns a list of books" do
        get :index
      
        expect(response.body).to eq([])
      end

    end
  end

  describe 'POST /books' do

  end

  describe "GET /books/:id" do
    
  end

  describe "PUT /books/:id" do
    
  end

  describe "DELETE /books/:id" do
    
  end
end
