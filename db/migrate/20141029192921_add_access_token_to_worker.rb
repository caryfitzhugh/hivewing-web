class AddAccessTokenToWorker < ActiveRecord::Migration
  def change
    add_column :workers, :access_token, :string, :null => false
  end
end
