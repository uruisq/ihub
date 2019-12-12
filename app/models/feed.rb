class Feed < ApplicationRecord
  has_many :items, dependent: :destroy, inverse_of: :feed
  accepts_nested_attributes_for :items, reject_if: :reject_item, allow_destroy: true

  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites

  def reject_item(attributes)
    exists = attributes[:id].present?
    empty = attributes[:isbn].blank?
    attributes.merge!(_destroy: 1) if exists && empty
    !exists && empty
  end
end
