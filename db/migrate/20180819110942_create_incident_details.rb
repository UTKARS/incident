class CreateIncidentDetails < ActiveRecord::Migration
  def change
    create_table :incident_details do |t|
      t.references :incident, index: true, foreign_key: true
      t.string :type_of_incident, array: true, default: []
      t.text :people_involved
      t.text :other_observers
      t.datetime :date_and_time
      t.string :location
      t.string :other_location
      t.timestamps null: false
    end
  end
end
