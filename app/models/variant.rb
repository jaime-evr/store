class Variant < ActiveRecord::Base
  belongs_to :product

  attr_accessible :color, :product, :size
end
