class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :name, :province_id
  
  belongs_to :province

  validates :address, :email, :name, :province_id, :presence => true
end
