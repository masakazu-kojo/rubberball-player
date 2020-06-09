class Newplayer < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  def user
    return User.find_by(id: self.user_id)
  end

end