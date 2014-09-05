class DeleteTables < ActiveRecord::Migration
  def change

    drop_table :reviews
    drop_table :tags
    drop_table :users
  end
end
