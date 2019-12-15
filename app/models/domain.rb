# frozen_string_literal: true

class Domain < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_one_attached :image

  has_many :topics
  has_many :tips, through: :topics

  belongs_to :user, optional: true
end
