class AddColumnLocaleToLanguage < ActiveRecord::Migration
    def up
      add_column :languages, :locale, :string unless column_exists? :languages, :locale
    end

    def down
      remove_column :languages, :locale, :string
    end
end
