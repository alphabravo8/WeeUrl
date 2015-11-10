require 'rails_helper'

RSpec.describe Url, type: :model do
  it "is not valid without an url" do
      theUrl = Url.new(url: nil)
      theUrl.valid?
      expect(theUrl).to_not be_valid
  end
  
  it "is invalid with a duplicate slug"
  
  it "is generating a slug"
end
