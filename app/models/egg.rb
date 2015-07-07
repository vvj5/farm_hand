class Egg < ActiveRecord::Base
  belongs_to :animal
  belongs_to :income
  has_many   :colors
  validates  :price, presence: true
end
