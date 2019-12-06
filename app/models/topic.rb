class Topic < ApplicationRecord
		#validates :name, presence: true, uniqueness: true

	has_many :tips

	belongs_to :user
	belongs_to :domain
end
