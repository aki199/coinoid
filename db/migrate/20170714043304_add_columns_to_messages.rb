class AddColumnsToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :category_id, :string
    add_column :messages, :—force, :string
  end
end
