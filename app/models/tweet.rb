class Tweet < ActiveRecord::Base
  # Remember to create a migration!

  belongs_to :user

  def stale?
    (Date.today - self.date_tweeted_on).to_i > self.user.stale_threshold
  end


end
