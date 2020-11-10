class Mantweet < ApplicationRecord

  attachment :image
  belongs_to :user
  has_many :comments
  has_many :favorites, dependent: :destroy

  
  with_options presence: true do
    validates :title
    validates :body
    validates :image_id
  end

end
