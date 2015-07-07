class Location < ActiveRecord::Base
  has_many  :users
  has_many  :weathers
  validates :zipcode, presence: true
end
