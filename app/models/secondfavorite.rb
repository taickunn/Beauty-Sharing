class Secondfavorite < ApplicationRecord
  belongs_to :user
  belongs_to :womantweet
  validates_uniqueness_of :womantweet_id, scope: :user_id
end
