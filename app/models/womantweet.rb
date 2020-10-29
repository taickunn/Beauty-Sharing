class Womantweet < ApplicationRecord


  attachment :image
  belongs_to :user
  has_many :secondcomments
  has_many :secondfavorites, dependent: :destroy


end
