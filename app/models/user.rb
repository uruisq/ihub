class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :feeds, dependent: :destroy
  has_many :items, through: :feeds
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

end
