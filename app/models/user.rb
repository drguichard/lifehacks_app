class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :topics, through: :domains
  has_many :tips, through: :topics
  has_many :domains

  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Saisis un email valide s'il te plait" }
  # validates :first_name, presence: true
  # validates :last_name, presence: true
end
