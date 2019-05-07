class CounterDocument < ApplicationRecord
  belongs_to :carrier
  belongs_to :carrier_client
end
