class CreateWorkersTable < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :guid, :required => true
      t.references :hives, :required => true
      t.timestamps
    end
    create_table :hives do |t|
      t.string :name
      t.timestamps
    end
  end
end
