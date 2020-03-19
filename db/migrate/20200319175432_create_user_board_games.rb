class CreateUserBoardGames < ActiveRecord::Migration[6.0]
  def change
    create_table :user_board_games do |t|
      t.integer :user_id
      t.integer :boardgame_id

      t.timestamps
    end
  end
end
