class CreateHiveRelationships < ActiveRecord::Migration
  def change
    rename_column :workers, :hives_id, :hive_id

    add_column :hives, :apiary_id, :integer, :required => true
  end
end
