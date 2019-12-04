class RenameLastNameString < ActiveRecord::Migration[5.2]
    change_table :users do |t|
  	  t.rename :last_name_string, :last_name
  end
end
