require 'spec_helper'

describe "home/index.html.erb" do
  it "displays the text" do
    render
    rendered.should contain("This is the where where the postcode and email address will go")
  end
 
end

