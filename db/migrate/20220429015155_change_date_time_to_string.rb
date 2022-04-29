class ChangeDateTimeToString < ActiveRecord::Migration[7.0]
  def change
remove_column :sales, :start_date, :datetime
remove_column :sales, :start_time, :datetime
remove_column :sales, :end_date, :datetime    
remove_column :sales, :end_time, :datetime

add_column :sales, :start_date, :string
add_column :sales, :start_time, :string
add_column :sales, :end_date, :string    
add_column :sales, :end_time, :string
  end
end
