class CounterService < ApplicationRecord
  belongs_to :counter_service_type
  belongs_to :user
  belongs_to :counter_document
  belongs_to :counter_schedule
  belongs_to :service_status
end
