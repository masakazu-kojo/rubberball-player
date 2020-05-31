class Newplayer < ApplicationRecord
  validates :text, {presence: true}
  validates :user_id, {presence: true}

  mount_uploader :image, ImageUploader

  def user
    return User.find_by(id: self.user_id)
  end

end