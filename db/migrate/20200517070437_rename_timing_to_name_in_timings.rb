class RenameTimingToNameInTimings < ActiveRecord::Migration[6.0]
  def change
    rename_column :timings, :timing, :name
  end
end
