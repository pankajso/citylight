class CreateFittings < ActiveRecord::Migration
  def change
    create_table :fittings do |t|
      t.string :typo, null: false
      t.integer :sub_typo, default: 0
      t.integer :wattage, default: 10

      t.timestamps null: false
    end
  end
end
