class CreateInfrastructures < ActiveRecord::Migration
  def change
    create_table :infrastructures do |t|
      t.float :area, null:false
      t.float :rate_per_unit, default: 10.00

      t.timestamps null: false
    end
  end
end
