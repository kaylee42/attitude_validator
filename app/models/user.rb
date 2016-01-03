class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  validates :password, length: { in: 6..20 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/ }
  validates :phone, format: { with: /\d{10}/}
end
