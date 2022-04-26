class UpdateTimesInSalesTable < ActiveRecord::Migration[7.0]
  def change
  add_column :sales, :start_time, :datetime
  add_column :sales, :end_time, :datetime
  remove_column :sales, :time, :datetime
  end
end
