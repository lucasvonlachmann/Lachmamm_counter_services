class CreateCounterDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :counter_documents do |t|
      t.string :number
      t.references :carrier, foreign_key: true
      t.references :carrier_client, foreign_key: true

      t.timestamps
    end
  end
end
