class Client < ActiveRecord::Base
	belongs_to :user
	has_many :jobs
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :address, presence: true
	validates :date_of_birth, presence: true
	validates :social_security, presence: true
	validates :phone_number, presence: true

	def name
		[self.first_name, self.last_name].compact.join(" ")
	end
end
