class Review < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :restaurant
  
  def user_email
    User.find(self.user_id).email
  end
  
end
