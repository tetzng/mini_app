class DestoroyTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :post_users
  end
end
