class CreateSubscribeJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table 'subscribes' do |t|
      t.integer 'subscription_id', :null => false
      t.integer 'subscriber_id', :null => false

      t.timestamps null: false
    end

    add_index :subscribes, :subscription_id
    add_index :subscribes, :subscriber_id
    add_index :subscribes, [:subscription_id, :subscriber_id], unique: true
  end
end
