class AddAttributesToBooks < ActiveRecord::Migration[7.1]
  def change
    add_reference :books, :user, null: false, foreign_key: true
    add_column :books, :category, :integer, default: 0
  end
end
