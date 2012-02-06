class Tweet < ActiveRecord::Base
  def message    
    return "sin user " if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end
  
  def status_update
    return "sin status" if self.status.blank?
    Twitter.status('27558893223').text
  end
end
