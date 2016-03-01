class RemoveUsernameFromUsersAndAdd < ActiveRecord::Migration
  def change
    remove_column :users, :username, :string
    add_column :users, :username, :string
  end
end
