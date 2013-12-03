class Book < ActiveRecord::Base
  attr_accessible :author, :description, :genre_id, :isbn, :price, :title. :image_filename

  belongs_to :genre

  #add validations
  validates :author, :isbn, :price, :title, :description, :presence => true
  validates :price, :numericality => true
  validates :isbn,   :isbn_format => true
  #validates_format_of :isbn, :with => /^(?:\d[\ |-]?){13}$/i

end
