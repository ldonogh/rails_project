class StoreController < ApplicationController
  def index
  	@books = Book.find(:all, :order => "created_at DESC")
  	@genres = Genre.order(:name)
  end # Autoamtically load: app/views/store/index.html.erb

  def book
    @book = Book.find(params[:id])
    @genres = Genre.order(:name)
  end

  def genre
    @books = Genre.find(params[:genre_id]).books
    @genre = Genre.find(params[:genre_id])
    @genres = Genre.order(:name)
  end

  def search_results
    @books = Book.where("#{params[:search_select]} LIKE ?", "%#{params[:keywords]}%")
    @genres = Genre.order(:name)
  end

  def buy
    @genres = Genre.order(:name)
    @book = Book.find(params[:id])
  end

end
