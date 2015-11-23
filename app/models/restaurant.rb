class Restaurant < ActiveRecord::Base
  searchkick
  
  has_many :reviews
  
  mount_uploader :image, ImageUploader
  
  def average
    if self.reviews.count > 0
      self.reviews.average(:raitng).round(2)
    end
  end
  
end
