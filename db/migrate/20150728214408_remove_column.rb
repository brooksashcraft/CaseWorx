class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :clients, :name, :string
  end
end
