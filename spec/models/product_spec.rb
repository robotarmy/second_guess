require 'spec_helper'

describe Product do

  it "has a creator " do
    user = User.create(
            :email => 'c@r9.c',
            :password => 'hihihi',
            :password_confirmation => 'hihihi')

      p = Product.create(:creator_user => user)

      Product.find(p.id).creator_user == user

  end
end
