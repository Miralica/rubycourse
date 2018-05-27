class User < ApplicationRecord
	validates :name,:email,:lastname, presence:  true
end
