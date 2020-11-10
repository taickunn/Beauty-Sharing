class Womantweet < ApplicationRecord


  attachment :image
  belongs_to :user
  has_many :secondcomments
  has_many :secondfavorites, dependent: :destroy


  with_options presence: true do
    validates :title
    validates :body
    validates :image_id
  end
  
end
