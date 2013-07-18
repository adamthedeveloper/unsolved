class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :commentable_id
      t.string :commentable_type
      t.integer :journalist_id

      t.timestamps
    end

    add_index :comments, [:commentable_id, :commentable_type]
    add_index :comments, :journalist_id
  end
end
