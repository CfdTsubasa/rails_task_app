class RenameStartDateColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :startDate, :start_date
  end
end
