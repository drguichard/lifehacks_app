# frozen_string_literal: true

class AddColumnPhotoToDomain < ActiveRecord::Migration[5.2]
  def change
    add_column :domains, :photo, :string
  end
end
