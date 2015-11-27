class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :string, default: "3"
  end
end
