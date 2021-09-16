class Developer < ApplicationRecord
	validates :name, :role, presence: true
	validates :email, presence: true, uniqueness: true
end
