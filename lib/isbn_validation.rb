class Book < ActiveRecord::Base
  validates :isbn, :isbn_format => true
  # validates_isbn :isbn, :isbn_format => { :with => :isbn13 }
end