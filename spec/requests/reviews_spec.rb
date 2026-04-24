require "rails_helper"

RSpec.describe "Reviews", type: :request do
  let(:user) { create(:user) }
  let(:book) { create(:book) }

  describe "POST /books/:book_id/reviews" do
    context "when logged in" do
      before { sign_in user }

      it "creates a review and redirects" do
        post book_reviews_path(book), params: { review: { body: "Great!", rating: 4, status: "reading" } }
        expect(response).to redirect_to(book_path(book))
      end
    end

    context "when logged out" do
      it "redirects to login" do
        post book_reviews_path(book), params: { review: { body: "Great!", rating: 4, status: "reading" } }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe "DELETE /books/:book_id/reviews/:id" do
    let(:review) { create(:review, user: user, book: book) }

    context "when logged in as the review author" do
      before { sign_in user }

      it "deletes the review and redirects" do
        delete book_review_path(book, review)
        expect(response).to redirect_to(book_path(book))
      end
    end

    context "when logged out" do
      it "redirects to login" do
        delete book_review_path(book, review)
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
