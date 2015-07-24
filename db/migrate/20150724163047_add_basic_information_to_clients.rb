class AddBasicInformationToClients < ActiveRecord::Migration
  def change
    add_column :clients, :first_name, :string
    add_column :clients, :last_name, :string
    add_column :clients, :address, :string
    add_column :clients, :date_of_birth, :integer
    add_column :clients, :social_security, :integer
    add_column :clients, :phone_number, :integer
  end
end
