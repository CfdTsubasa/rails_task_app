class RenameEndDateColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :endDate, :end_date
  end
end
