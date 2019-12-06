class Tip < ApplicationRecord
	validates :name, presence: true
	validates :content, presence: true

	belongs_to :user
	belongs_to :topic
end
