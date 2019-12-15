# frozen_string_literal: true

class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.belongs_to :user, index: true
      t.belongs_to :topic, index: true
      t.string :name
      t.text :content
      t.string :photo

      t.timestamps
    end
  end
end
