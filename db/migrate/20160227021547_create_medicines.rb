class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name
      t.integer :min_price
      t.integer :max_price
      t.string :description
      t.string :image_url
      t.string :size

      t.timestamps null: false
    end
  end
end
