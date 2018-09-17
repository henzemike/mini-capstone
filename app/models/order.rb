class Order < ApplicationRecord
  belongs_to :product # returns a porduct hash
  belongs_to :user # returns a user hash
end
