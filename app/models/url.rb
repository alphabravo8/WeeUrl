class Url < ActiveRecord::Base
  
  after_create :generate_slug
  validates :url, :presence => true, :url => true

  def generate_slug
    self.slug = self.id.to_s(36)
    self.save
  end
  
end
