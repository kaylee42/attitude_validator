class User < ActiveRecord::Base
  validates_presence_of :name, :password_confirmation, message: "Fill it in, duh"

  validates_uniqueness_of :name, message: "Not a unique username, clearly"

  validates :password, length: { in: 6..20 }

  validates :password, confirmation: true
  
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/ }

  validates :phone, format: { with: /\d{10}/, message: "Give me yo numba"}
end
