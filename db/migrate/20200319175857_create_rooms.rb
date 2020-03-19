class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :host_id
      t.string :zoom_url

      t.timestamps
    end
  end
end
