class ProductsController < ApplicationController
  before_filter :authenticate_user!
  def new
  end
  def create
    product_attr = {
      :creator_user => current_user
    }.reverse_merge(params[:product])

  end
end
