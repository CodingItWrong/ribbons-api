class AddSingularNameToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :singular_name, :string
  end
end
