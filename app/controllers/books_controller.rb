class BooksController < ApplicationController
  before_action :require_admin!, only: [ :new, :create, :edit, :update, :destroy ]
  def index
    @books = Book.includes(:reviews).all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, notice: "Book deleted."
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :genre, :bookcover)
  end
end
