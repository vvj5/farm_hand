class User < ActiveRecord::Base
  belongs_to :location
  validates  :name, presence: true
  validates  :email, presence: true
  validates  :password, presence: true
  validates  :password_confirmation, presence: true
end
