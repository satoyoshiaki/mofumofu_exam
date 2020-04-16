class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.string :route_name
      t.string :station_name
      t.integer :distance
      t.integer :home_id
      t.references :home, foreign_key: true

      t.timestamps
    end
  end
end
