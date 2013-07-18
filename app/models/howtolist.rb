class Howtolist < ActiveRecord::Base
  attr_accessible :content, :product_id, :title
  belongs_to :product
end
