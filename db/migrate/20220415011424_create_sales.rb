class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.datetime :start_date
      t.datetime :time
      t.string :address
      t.string :picture
      t.datetime :end_date

      t.timestamps
    end
  end
end
