class Order < ActiveRecord::Base
  attr_accessible :amount, :book_id, :customer_id, :paid, :shipped

  belongs_to :customer
  belongs_to :book

  validates :amount, :book_id, :customer_id, :presence => true
  validates :amount, :numericality => true
end
