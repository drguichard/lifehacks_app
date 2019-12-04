class Domain < ApplicationRecord
	has_many :topics

	validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
	belongs_to :user, optional: true
end
