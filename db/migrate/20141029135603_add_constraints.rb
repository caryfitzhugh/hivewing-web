class AddConstraints < ActiveRecord::Migration
  def change
    change_column_null :apiaries, :beekeeper_id, false
    change_column_null :apiaries, :name, false

    change_column_null :hive_beekeepers, :hive_id, false
    rename_column :hive_beekeepers, :beekeepers_id, :beekeeper_id
    change_column_null :hive_beekeepers, :beekeeper_id, false

    change_column_null :hives, :name, false
    change_column_null :hives, :apiary_id, false

    change_column_null :workers, :guid, false
    change_column_null :workers, :hive_id, false
    change_column_null :workers, :apiary_id, false
  end
end
