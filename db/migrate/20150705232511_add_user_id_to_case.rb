class AddUserIdToCase < ActiveRecord::Migration
  def change
  	add_column :case, :user_id, :integer
    add_index :case, :user_id
  end
end
