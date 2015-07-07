class Farm < ActiveRecord::Base
  has_many :animals
  has_many :incomes
  has_many :expenses
  has_many :weathers
end
