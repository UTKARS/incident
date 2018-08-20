class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
