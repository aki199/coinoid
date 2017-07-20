class RenameMessagesToPosts < ActiveRecord::Migration[4.2]
  def change
    rename_table :messages, :posts
  end
end