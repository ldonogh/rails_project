class GenresController < ApplicationController
  # GET /genres
  # GET /genres.json
  def index
    @genres = Genre.all
  end

  # GET /genres/1
  # GET /genres/1.json
  def genre
    @genre = Genre.find(params[:genre_id])
    @genres = Genre.all
    @books = @genre.books #<-- THIS IS IMPORTANT
  end

  def book
    @genre = Genre.find(params[:genre_id])
    @genres = Genre.all
  end

  