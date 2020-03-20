class AddBoardgameIdToRoom < ActiveRecord::Migration[6.0]
  def change
       add_column :rooms, :boardgame_id, :integer
  end
end
