class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :name, message: "you need a name, stupid"
  validates :password, length: { in: 6..20 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/ }
  validates :phone, format: { with: /\d{10}/, message: "Phone number must be 10 digits with no special characters."}
end
