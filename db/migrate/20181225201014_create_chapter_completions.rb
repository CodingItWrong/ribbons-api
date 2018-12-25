class CreateChapterCompletions < ActiveRecord::Migration[5.2]
  def change
    create_table :chapter_completions do |t|
      t.references :reading, foreign_key: true, null: false
      t.integer :chapter

      t.timestamps
    end
  end
end
