class EchoController < ApplicationController
  before_filter :authenticate_user!
  def hello
    render :text => 'hello world'
  end
end
