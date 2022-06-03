class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
    @user = current_user.id
  end

  def show
  end

  private

  def post_image_params
    params.require(:book).permit(:title, :body)
  end
end
