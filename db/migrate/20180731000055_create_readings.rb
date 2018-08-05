class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.integer :book_num, null: false
      t.datetime :completed_at
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
