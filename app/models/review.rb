class Review < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :restaurant
  
  def user_email
    User.find(self.user_id).email
  end
  
  def user_name
    User.find(self.user_id).name
  end
  
end
