class CreateCounterServices < ActiveRecord::Migration[5.2]
  def change
    create_table :counter_services do |t|
      t.references :counter_service_type, foreign_key: true
      t.references :user, foreign_key: true
      t.references :counter_document, foreign_key: true
      t.references :counter_schedule, foreign_key: true
      t.references :service_status, foreign_key: true
      t.text :user_description

      t.timestamps
    end
  end
end
