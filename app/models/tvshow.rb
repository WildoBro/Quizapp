class Tvshow < ActiveRecord::Base
  has_many :user_reviews
end
