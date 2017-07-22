class RenameMessageIdToPostIdInComments < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :message_id, :post_id
  end
end
