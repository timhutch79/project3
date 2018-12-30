class Tweet < ApplicationRecord
  belongs_to :user

  validates :content, presence: true. lenght: { maximum: 140 }
  validates :user, presence: true
end
