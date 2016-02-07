class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string
    add_column :users, :age, :integer
    add_column :users, :housemate, :string
    add_column :users, :occupation, :string
  end
end
