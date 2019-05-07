class CreateCounterServiceTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :counter_service_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
