class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :name
      t.text :content
      t.string :photo

      t.timestamps
    end
  end
end
