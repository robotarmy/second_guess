class Product < ActiveRecord::Base
  belongs_to :creator_user, :class_name => 'User'
  attr_accessible :description, :name, :creator_user
end
