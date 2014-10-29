class UpdateTables < ActiveRecord::Migration
  def change
    rename_column :apiaries, :owner_id_id, :beekeeper_id
    add_column :apiaries, :name, :string, :required => true
  end
end
