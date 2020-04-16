class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :name
      t.integer :money
      t.text :address
      t.integer :age

      t.timestamps
    end
  end
end
