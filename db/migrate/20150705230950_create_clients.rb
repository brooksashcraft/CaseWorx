class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string :client_id

      t.timestamps null: false
    end
  end
end
