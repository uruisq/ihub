class Feed < ApplicationRecord

  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 200 }

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites
  has_many :liked_users, through: :favorites, source: :user

end
