class Domain < ApplicationRecord
	has_many :topics
	has_many :tips, through: :topics

	validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
	belongs_to :user, optional: true
end
