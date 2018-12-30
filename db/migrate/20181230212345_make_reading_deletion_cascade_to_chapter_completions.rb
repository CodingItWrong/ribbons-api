class MakeReadingDeletionCascadeToChapterCompletions < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :chapter_completions, :readings
    add_foreign_key :chapter_completions, :readings, on_delete: :cascade
  end
end
