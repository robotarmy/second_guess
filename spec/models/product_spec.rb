require 'spec_helper'

describe Product do
  it "has a vote count works with negative" do
    user = User.create(
            :email => 'c@r9.c',
            :password => 'hihihi',
            :password_confirmation => 'hihihi')
    p = Product.create!(:name => 'One')
    p.votes.should be_empty
    p.votes.create(:user_id => user.id, :value => -1)
    p.votes.create(:user_id => user.id, :value => -1)
    p.negative_vote_count.should == 2
  end

  it "has a vote count works with positive" do
    user = User.create(
            :email => 'c@r9.c',
            :password => 'hihihi',
            :password_confirmation => 'hihihi')
    p = Product.create!(:name => 'One')
    p.votes.should be_empty
    p.votes.create(:user_id => user.id, :value => 1)
    p.votes.create(:user_id => user.id, :value => 1)
    p.positive_vote_count.should == 2
  end

  it "has a creator " do
    user = User.create(
            :email => 'c@r9.c',
            :password => 'hihihi',
            :password_confirmation => 'hihihi')

      p = Product.create(:creator_user => user)

      Product.find(p.id).creator_user == user

  end
end
