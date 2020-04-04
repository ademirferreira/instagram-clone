# frozen_string_literal: true

class RemoveBodyColumnFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :body
  end
end
