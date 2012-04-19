require 'spec_helper'
describe EchoController do
  it "is restricted" do
   get :hello
   response.should be_redirect
  end

end
