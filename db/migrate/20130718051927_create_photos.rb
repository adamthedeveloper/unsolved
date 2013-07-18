class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.integer :journalist_id
      t.integer :photoable_id
      t.string :photoable_type

      t.timestamps
    end

    add_index :photos, :journalist_id
    add_index :photos, [:photoable_id, :photoable_type]
  end
end
