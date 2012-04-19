class Vote < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  attr_accessible :value, :product_id, :user_id
end
