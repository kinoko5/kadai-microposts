class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :okiniiri
  
  validates :user_id, presence: true
  validates :okiniiri_id, presence: true
end
