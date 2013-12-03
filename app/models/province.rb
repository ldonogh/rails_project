class Province < ActiveRecord::Base
  attr_accessible :abbr, :name, :tax_rate

  validates :abbr, :name, :tax_rate, :presence => true
  validates :tax_rate, :numericality => true
end
