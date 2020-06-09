class Like < ApplicationRecord
  belongs_to :user
  belongs_to :newplayer
  validates :user_id,{presence: true}
  validates :newplayer_id,{presence: true}  
end
