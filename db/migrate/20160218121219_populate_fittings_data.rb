class PopulateFittingsData < ActiveRecord::Migration
  def up
    Rake::Task['seed:populate_fittings_data'].invoke
  end

  def down
  end
end
