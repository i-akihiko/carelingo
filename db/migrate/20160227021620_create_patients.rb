class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.boolean :is_adult
      t.integer :age
      t.integer :pain

      t.timestamps null: false
    end
  end
end
