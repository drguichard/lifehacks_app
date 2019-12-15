# frozen_string_literal: true

class AddColumnUseridToDomain < ActiveRecord::Migration[5.2]
  def change
    add_reference :domains, :user, index: true
  end
end
