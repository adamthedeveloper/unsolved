class CreateIncidentReports < ActiveRecord::Migration
  def change
    create_table :incident_reports do |t|
      t.integer :journalist_id
      t.integer :incident_id

      t.timestamps
    end

    add_index :incident_reports, :journalist_id
    add_index :incident_reports, :incident_id
  end
end
