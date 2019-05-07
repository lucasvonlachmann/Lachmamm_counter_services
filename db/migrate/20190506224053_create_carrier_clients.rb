class CreateCarrierClients < ActiveRecord::Migration[5.2]
  def change
    create_table :carrier_clients do |t|
      t.string :name

      t.timestamps
    end
  end
end
