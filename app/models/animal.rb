class Animal < ActiveRecord::Base
  belongs_to :farm
  has_many :eggs
end
