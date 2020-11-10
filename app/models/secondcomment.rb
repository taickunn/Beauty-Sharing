class Secondcomment < ApplicationRecord
  belongs_to :womantweet
  belongs_to :user

  with_options presence: true do
    validates :text
  end
  
end
