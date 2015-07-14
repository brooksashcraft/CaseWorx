class Job < ActiveRecord::Base
	belongs_to :user #user_id
	belongs_to :client #client_id
end
