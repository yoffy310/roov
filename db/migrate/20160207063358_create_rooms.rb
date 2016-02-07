class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.text :room_name
      t.text :room_genre
      t.text :room_detail
      t.string :user_id

      t.timestamps null: false
    end
  end
end
