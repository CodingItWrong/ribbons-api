class AddNumChaptersToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :num_chapters, :integer
  end
end
