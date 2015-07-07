class Expense < ActiveRecord::Base
  belongs_to :farm
  validates  :title, presence: true
  validates  :amount, presence: true
end
