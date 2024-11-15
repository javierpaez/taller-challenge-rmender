class BooksController < ApplicationController
  def index
    render json: Book.all # TODO: Sort books by rating (high first) and then by publication date (soonest first).
  end

  def create
    book = Book.new(book_params)
    if book.save
      render json: book, status: :ok
    else
      render json: book.errors.messages, status: :bad_request
    end
  end

  def show
    book = Book.find(params[:id])
    if book
      render json: book, status: :ok
    end
  rescue ActiveRecord::RecordNotFound
    render json: { error_message: "Book not found" }
  end

  def destroy
  end

  private 
  
  def book_params
    params.require(:book).permit(:author, :title, :publication_date, :status, :rating)
  end
end
