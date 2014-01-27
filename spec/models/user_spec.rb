require 'spec_helper'

describe User do
  
    it "is valid with an email address" do
       user = User.new(
         email: 'cebirim@gmail.com',
         postcode: 'E1 5RY')
       expect(user).to be_valid
    end
 
    it "is invalid without an email address"
    it "is valid with a postcode"
    it "is invalid without a postcode"
   
end
