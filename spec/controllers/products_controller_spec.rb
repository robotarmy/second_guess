require 'spec_helper'

describe ProductsController do
   it " #create" do
    user = User.create(
            :email => 'c@r9.c',
            :password => 'hihihi',
            :password_confirmation => 'hihihi')

      post :create , {:product => {:name => 'hi', 
                                   :description => 'desc',
                                   :creator_user_id => user.id
                                  }}

   end
end
