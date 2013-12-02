class StoreController < ApplicationController
  def index
  	@books = Book.order(:title)
  end # Autoamtically load: app/views/store/index.html.erb

  def show
  	@book = Book.find(params[:id])
  end # Automatically load: app/views/store/show.html.erb
end
