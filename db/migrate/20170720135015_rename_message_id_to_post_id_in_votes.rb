class RenameMessageIdToPostIdInVotes < ActiveRecord::Migration[5.1]
  def change
    rename_column :votes, :message_id, :post_id
  end
end
