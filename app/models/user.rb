class User < ActiveRecord::Base
	belongs_to :incident
	ROLES = ['Student','Teacher','Other staff','Parent','Community member']
end
