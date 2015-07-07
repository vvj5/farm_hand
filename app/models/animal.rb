class Animal < ActiveRecord::Base
  has_many  :breeds
  has_many  :eggs, through: :breeds
  validates :name, presence: true
end
