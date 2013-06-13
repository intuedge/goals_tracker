class AddTypeToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :type, :string
    add_index :microposts, [:user_id, :type, :created_at]
  end
end
