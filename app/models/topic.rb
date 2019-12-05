class Topic < ApplicationRecord
		#validates :name, presence: true, uniqueness: true

	has_many :tips

	belongs_to :user, optional: true
	belongs_to :domain
end
