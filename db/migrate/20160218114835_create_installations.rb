class CreateInstallations < ActiveRecord::Migration
  def change
    create_table :installations do |t|
      t.references :infrastructure, index: true, foreign_key: true
      t.references :fitting, index: true, foreign_key: true
      t.integer :quantity, null: false
      t.float :running_time, null: false

      t.timestamps null: false
    end
  end
end
