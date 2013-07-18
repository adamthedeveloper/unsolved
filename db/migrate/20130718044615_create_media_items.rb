class CreateMediaItems < ActiveRecord::Migration
  def change
    create_table :media_items do |t|
      t.string :title
      t.text :description
      t.integer :journalist_id
      t.integer :incident_id

      t.timestamps
    end

    add_index :media_items, :journalist_id
    add_index :media_items, :incident_id
  end
end
