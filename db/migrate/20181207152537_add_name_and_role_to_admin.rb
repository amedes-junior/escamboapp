class AddNameAndRoleToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :name, :String
    add_column :admins, :role, :integer
  end
end
