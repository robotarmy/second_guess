class Product < ActiveRecord::Base
  belongs_to :creator_user
  attr_accessible :description, :name
end
