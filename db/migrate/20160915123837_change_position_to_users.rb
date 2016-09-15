class ChangePositionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :position_id, :integer
    remove_column :users, :position, :string
  end
end
