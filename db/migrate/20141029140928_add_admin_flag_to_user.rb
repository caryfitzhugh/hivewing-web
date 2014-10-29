class AddAdminFlagToUser < ActiveRecord::Migration
  def change
    add_column :beekeepers, :role, :string, :default => "user"
  end
end
