class Book < ActiveRecord::Base
  attr_accessible :author, :description, :genre_id, :isbn, :price, :title

  belongs_to :genre

  #add validations


end
