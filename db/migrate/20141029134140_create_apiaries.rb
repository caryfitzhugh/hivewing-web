class CreateApiaries < ActiveRecord::Migration
  def change
    create_table :apiaries do |t|
      t.references :owner_id, :required => true
    end

    add_column :workers, :apiary_id, :integer, :required => true

    create_table :hive_beekeepers do |t|
      t.references :hive, :required => true
      t.references :beekeepers, :required => true
      t.string :role, :default => "", :required => true
      t.timestamps
    end
  end
end
