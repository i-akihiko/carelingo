class RenameConditionsToSymptomDetails < ActiveRecord::Migration
  def change
    rename_table :conditions, :symptom_details
  end
end
