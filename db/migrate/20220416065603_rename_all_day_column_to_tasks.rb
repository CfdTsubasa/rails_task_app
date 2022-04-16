class RenameAllDayColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :allDay, :all_day
  end
end
