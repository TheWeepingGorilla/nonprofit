class Organization < ActiveRecord::Base

  has_many :donations
  has_many :subscriptions

end


