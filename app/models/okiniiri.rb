class Okiniiri < ApplicationRecord
  belongs_to :user
  belongs_to :iine, class_name: 'Micropost'
  
  validates :user_id, presence: true
  validates :iine_id, presence: true
end
