class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.bigint :adquisition_unit_price_cents
      t.float :adquired_units
      t.string :name
      t.date :adquisition_date
      t.string :broker
      t.enum :type

      t.timestamps
    end
  end
end
