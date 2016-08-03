class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.string :over_12
      t.string :over_6
      t.string :under_6

      t.timestamps null: false
    end
  end
end
