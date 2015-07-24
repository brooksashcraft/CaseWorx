class Client < ActiveRecord::Base
	belongs_to :user
	has_many :jobs
	validates :name, presence: true
	validates :address, presence: true
	validates :date_of_birth, presence: true
	validates :social_security, presence: true
	validates :phone_number, presence: true
end
