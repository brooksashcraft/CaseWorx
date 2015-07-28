class AddBasicInformationToClients < ActiveRecord::Migration
  def change
    add_column :clients, :address, :string
    add_column :clients, :date_of_birth, :datetime
    add_column :clients, :social_security, :string
    add_column :clients, :phone_number, :string
  end
end
