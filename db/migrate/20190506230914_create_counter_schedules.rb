class CreateCounterSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :counter_schedules do |t|
      t.date :date
      t.time :hour
      t.references :branch, foreign_key: true

      t.timestamps
    end
  end
end
