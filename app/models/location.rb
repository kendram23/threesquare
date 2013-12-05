class Location < ActiveRecord::Base
	has_many :ratings
	validates :rating, presence: true
end
