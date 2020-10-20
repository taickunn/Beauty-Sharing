class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :mantweet
  validates_uniqueness_of :mantweet_id, scope: :user_id
end
