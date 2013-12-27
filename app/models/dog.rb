class Dog < ActiveRecord::Base
	validates :name, presence: true
	has_many :custodies
	has_many :owners, through: :custodies


end
