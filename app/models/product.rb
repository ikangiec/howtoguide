class Product < ActiveRecord::Base
  attr_accessible :content, :title
  has_many :howtolists
end
