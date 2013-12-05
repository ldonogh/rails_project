class BooksController < ApplicationController
  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def book
    @book = Book.find(params[:id])
    @genre = @book.genre_id
    @genres = Genre.all
  end
end

  def add_cart
    session[:cart_items] ||= []
    session[:cart_items] << params[:id]
    redirect_to :action => :index
  end

  def remove_cart

  end

  def empty_cart
    session[:cart_items] = []
    redirect_to :action => :index
  end


  #def genre
  #    @books = Genre.find(params[:genre_id]).books
  #end

 