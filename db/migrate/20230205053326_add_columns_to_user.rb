class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rank1, :string
    add_column :users, :rank2, :string
    add_column :users, :rank3, :string
    add_column :users, :rank4, :string
    add_column :users, :rank5, :string
  end
end
