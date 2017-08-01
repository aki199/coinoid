class AddTickerIdToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :ticker_id, :integer
  end
end
