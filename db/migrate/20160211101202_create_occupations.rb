class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.string   :occupation

      t.timestamps
    end
  end
end
