class StoreController < ApplicationController
  def index
  	@books = Book.order(:title)
  	@genres = Genre.order(:name)
  end # Autoamtically load: app/views/store/index.html.erb

    def book
    @book = Book.find(params[:id])
    @genres = Genre.order(:name)
  end

  def genre
    @book = Book.find(params[:id])
    @books = Book.order(:title)
    @genre = Genre.find(params[:id])
    @genres = Genre.order(:name)
  end
end
