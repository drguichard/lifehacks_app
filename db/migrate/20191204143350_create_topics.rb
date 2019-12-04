class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.belongs_to :domain, index: true 
	  t.belongs_to :user, index: true
      t.string :name

      t.timestamps
    end
  end
end
