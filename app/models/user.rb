class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
  end
      
  has_many :comments
  has_many :mantweet, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :womantweet, dependent: :destroy
  has_many :secondfavorites, dependent: :destroy
  attachment :profile_image

  def already_favorited?(mantweet)
    self.favorites.exists?(mantweet_id: mantweet.id)
  end

  def already_secondfavorited?(womantweet)
    self.secondfavorites.exists?(womantweet_id: womantweet.id)
  end
     

end
