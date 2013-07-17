class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.integer :journalist_id

      t.timestamps
    end

    add_index :incidents, :journalist_id
  end
end
