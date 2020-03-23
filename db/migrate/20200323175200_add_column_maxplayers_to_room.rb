class AddColumnMaxplayersToRoom < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :maxplayers, :integer
  end
end
