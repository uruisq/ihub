class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :feed
  validates_uniqueness_of :feed_id, scope: :user_id
end