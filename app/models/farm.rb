class Farm < ActiveRecord::Base
  has_many :expenses
  has_many :incomes
  has_many :animals
  has_many :eggs, through: :animals
  has_many :weathers
end
