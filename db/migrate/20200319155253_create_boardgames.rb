class CreateBoardgames < ActiveRecord::Migration[6.0]
  def change
    create_table :boardgames do |t|
      t.string :api_id
      t.string :name
      t.string :year_published
      t.string :min_players
      t.string :max_players
      t.string :min_playtime
      t.string :description
      t.string :description_preview
      t.string :image_url
      t.string :thumb_url

      t.timestamps
    end
  end
end
