class CreateJournalists < ActiveRecord::Migration
  def change
    create_table :journalists do |t|
      t.integer :user_id
      t.string :nickname
      t.string :first_name
      t.string :last_name

      t.timestamps
    end

    add_index :journalists, :user_id
  end
end
