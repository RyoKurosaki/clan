class AddPlaceOutStartOutEndToUsers < ActiveRecord::Migration
  def change
    add_column :users, :place, :string
    add_column :users, :out_start, :string
    add_column :users, :out_end, :string
  end
end
