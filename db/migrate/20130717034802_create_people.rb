class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.integer :sex, default: 0
      t.integer :race_id
      t.date :dob
      t.date :dod
      t.integer :hair_color_id
      t.integer :eye_color_id
      t.integer :weight
      t.integer :height
      t.string :type
      t.hstore :properties

      t.timestamps
    end

    add_index :people, :race_id
    add_index :people, :hair_color_id
    add_index :people, :eye_color_id
    add_index :people, :type
  end
end
