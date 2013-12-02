class Book < ActiveRecord::Base
  attr_accessible :author, :description, :genre_id, :isbn, :price, :title
end
