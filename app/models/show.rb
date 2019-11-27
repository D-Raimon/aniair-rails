class Show < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :video_url, presence: true

  has_many :subscriptions
  has_many :users, through => :subscriptions
end