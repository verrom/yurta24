class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true, length: { maximum: 10 }
			  		 

	has_secure_password
	validates :password, length: { minimum: 6 }
end
