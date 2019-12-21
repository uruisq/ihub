class Feed < ApplicationRecord

  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites
  has_many :liked_users, through: :favorites, source: :user

end
