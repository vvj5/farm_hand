class Income < ActiveRecord::Base
  belongs_to :farm
  belongs_to :egg
end
