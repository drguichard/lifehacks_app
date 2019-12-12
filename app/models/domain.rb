class Domain < ApplicationRecord
	has_many :topics
	has_many :tips, through: :topics

	validates :name, presence: true, uniqueness: true
	belongs_to :user, optional: true

	has_one_attached :image
end
