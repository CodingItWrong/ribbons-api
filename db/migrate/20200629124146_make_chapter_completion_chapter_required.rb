class MakeChapterCompletionChapterRequired < ActiveRecord::Migration[6.0]
  def change
    change_column_null :chapter_completions, :chapter, false
  end
end
