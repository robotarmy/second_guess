require 'spec_helper'

describe "votes/edit" do
  before(:each) do
    @vote = assign(:vote, stub_model(Vote,
      :product => nil,
      :user => nil,
      :value => 1
    ))
  end

  it "renders the edit vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path(@vote), :method => "post" do
      assert_select "input#vote_product", :name => "vote[product]"
      assert_select "input#vote_user", :name => "vote[user]"
      assert_select "input#vote_value", :name => "vote[value]"
    end
  end
end
