class AddMoodToDiaryEntry < ActiveRecord::Migration
  def change
    add_column :diary_entries, :mood, :string
  end
end
