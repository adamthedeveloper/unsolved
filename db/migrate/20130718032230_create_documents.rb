class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.text :description
      t.integer :journalist_id
      t.integer :incident_id

      t.timestamps
    end

    add_index :documents, :journalist_id
    add_index :documents, :incident_id
  end
end
