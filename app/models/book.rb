class Book < ActiveRecord::Base
  attr_accessible :author, :description, :genre_id, :isbn, :price, :title

  belongs_to :genre

  #add validations
  validates :author, :isbn, :price, :title, :description, :presence => true
  validates :price, :numericality => true
  validates :isbn, :isbn_format => true

end
