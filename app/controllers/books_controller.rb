class BooksController < ApplicationController

    def index
        books= Book.all 
        render json: books
    end

    def create
        book = Book.create(book_params)
        render json: book
    end

    def show
        book = Book.find(params[:id])
        render json: book
    end

    def update
        book = Book.find(params[:id])
        book.update(book_params)
        render json: book
    end

    def destroy
        book = Book.find(params[:id])
        destination = book.destination
        book.destroy
        render json: { status: true }
    end

    private
    def book_params
        params.permit(:title, :author, :image, :synopsis, :destination_id)
    end

end
