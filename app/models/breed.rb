class Breed < ActiveRecord::Base
  belongs_to :animal
  has_many   :eggs
  validates  :name, presence: true
end
