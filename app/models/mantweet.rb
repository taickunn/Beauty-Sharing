class Mantweet < ApplicationRecord

  attachment :image
  belongs_to :user
  has_many :comments
  has_many :favorites, dependent: :destroy

  
  

end
