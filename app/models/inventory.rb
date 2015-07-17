class Inventory < ActiveRecord::Base
  has_many :animals
  has_many :eggs
end
