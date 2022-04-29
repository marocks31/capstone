class CreateAgendas < ActiveRecord::Migration[7.0]
  def change
    create_table :agendas do |t|
      t.integer :user_id
      t.integer :sale_id

      t.timestamps
    end
  end
end
