class AddMessagesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :room_id
      t.integer :user_id
      t.string :message_content

      t.timestamps
    end
  end
end
