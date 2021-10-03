class AddAbbreviationToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :abbreviation, :string
  end
end
