class Like < ApplicationRecord
  validates :user_id,{presence: true}
  validates :newplayer_id,{presence: true}  
end
