class Tweet < ActiveRecord::Base
  def get_message_from(user)    
    return "sin user " if self.user.nil?
    Twitter.user_timeline(user).first.text
  end
end
