class AddPointsAndHotscoreToMessage < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :points, :integer, default: 1
    add_column :messages, :hot_score, :float, default: 0
  end
end
