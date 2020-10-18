class Comment < ApplicationRecord
  belongs_to :mantweet
  belongs_to :user
end
