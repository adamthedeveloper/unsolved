class CreatePersonReports < ActiveRecord::Migration
  def change
    create_table :person_reports do |t|
      t.integer :incident_id
      t.integer :journalist_id
      t.integer :person_id

      t.timestamps
    end

    add_index :person_reports, :incident_id
    add_index :person_reports, :journalist_id
    add_index :person_reports, :person_id
  end
end
