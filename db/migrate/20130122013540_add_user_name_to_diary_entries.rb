class AddUserNameToDiaryEntries < ActiveRecord::Migration
  def change
    add_column :diary_entries, :user_name, :string
  end
end
