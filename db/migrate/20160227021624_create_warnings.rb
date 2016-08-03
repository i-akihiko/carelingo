class CreateWarnings < ActiveRecord::Migration
  def change
    create_table :warnings do |t|
      t.string :caution
      t.string :liver_warning
      t.string :pregnancy_warning

      t.timestamps null: false
    end
  end
end
