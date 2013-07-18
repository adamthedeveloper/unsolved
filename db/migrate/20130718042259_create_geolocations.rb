class CreateGeolocations < ActiveRecord::Migration
  def change
    create_table :geolocations do |t|
      t.string :geoable_type
      t.integer :geoable_id
      t.float :lat
      t.float :long

      t.timestamps
    end

    add_index :geolocations, [:geoable_id, :geoable_type]
  end
end
