class ChangeBookNumToIdOnReading < ActiveRecord::Migration[5.2]
  def change
    remove_column :readings, :book_num, :integer, null: false
    add_reference :readings, :book, foreign_key: true, null: false
  end
end
