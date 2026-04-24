require "rails_helper"

RSpec.describe "Books", type: :request do
  let(:user) { create(:user) }
  let(:book) { create(:book) }

  describe "GET /books" do
    it "returns 200" do
      get books_path
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET /books/:id" do
    it "returns 200" do
      get book_path(book)
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET /books/new" do
    context "when logged in" do
      before { sign_in user }

      it "returns 200" do
        get new_book_path
        expect(response).to have_http_status(:ok)
      end
    end

    context "when logged out" do
      it "redirects to login" do
        get new_book_path
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe "POST /books" do
    context "when logged in" do
      before { sign_in user }

      it "creates a book and redirects" do
        post books_path, params: { book: { title: "New Book", author: "Author", genre: "fiction" } }
        expect(response).to redirect_to(book_path(Book.last))
      end
    end
  end
end
