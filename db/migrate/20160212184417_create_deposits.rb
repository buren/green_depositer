class CreateDeposits < ActiveRecord::Migration[5.0]
  def change
    create_table :deposits do |t|
      t.float :quantity
      t.string :unit
      t.string :category
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
