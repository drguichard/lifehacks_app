class Tip < ApplicationRecord
	validates :name, presence: true
	validates :content, presence: true

	belongs_to :user, optional: true
	belongs_to :topic, optional: true
end
