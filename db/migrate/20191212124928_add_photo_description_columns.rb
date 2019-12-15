# frozen_string_literal: true

class AddPhotoDescriptionColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :description, :text
  end
end
