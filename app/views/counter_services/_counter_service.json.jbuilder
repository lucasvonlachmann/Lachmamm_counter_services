json.extract! counter_service, :id, :counter_service_type_id, :user_id, :counter_document_id, :counter_schedule_id, :service_status_id, :user_description, :created_at, :updated_at
json.url counter_service_url(counter_service, format: :json)
