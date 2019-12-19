class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :feeds, dependent: :destroy
  has_many :items, through: :feeds
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_feeds, through: :favorites, source: :feed
  def already_favorited?(feed)
    self.favorites.exists?(feed_id: feed.id)
  end
end
