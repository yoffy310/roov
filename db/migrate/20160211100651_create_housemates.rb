class CreateHousemates < ActiveRecord::Migration
  def change
    create_table :housemates do |t|
      t.string  :housemate

      t.timestamps
    end
  end
end
