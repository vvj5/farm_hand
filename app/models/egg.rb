class Egg < ActiveRecord::Base
  belongs_to :animal
  has_many :incomes
end
