class Income < ActiveRecord::Base
  belongs_to :farm
  has_many   :eggs
  validates  :quantity_sold, presence: true
end
