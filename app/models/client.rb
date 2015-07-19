class Client < ActiveRecord::Base
	belongs_to :user
	has_many :jobs
	#validates :client_id, presence: true
end
