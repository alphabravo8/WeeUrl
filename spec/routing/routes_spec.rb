# spec/routing/routes_spec.rb
require "rails_helper"

RSpec.describe "Routes", :type => :routing do

  it "gets a list of all the Urls" do
    expect(:get => "/urls").to route_to(
      :controller => "urls",
      :action => "index"
    )
  end
  
  it "gets to urls/new" do
      expect(:get => "urls/new").to route_to(
        :controller => "urls",
        :action => "new"
      )
  end
  
  it "posts to url#create" do
      expect(:post => "urls/").to route_to(
        :controller => "urls",
        :action => "create"
      )
  end
  
  it "redirects /urls/:slug to /:slug"

end