class User < ActiveRecord::Base

  has_many :donations
  has_many :subscriptions
