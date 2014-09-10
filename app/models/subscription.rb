class Subscription < ActiveRecord::Base

  belongs_to :organization
  belongs_to :user

end

