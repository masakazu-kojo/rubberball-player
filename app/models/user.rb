class User < ApplicationRecord
  has_secure_password

    validates :name, {presence: true}
    validates :email, {presence: true, uniqueness: true}
    has_many :newplayers, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :liked_newplayers, through: :likes, source: :post

    def newplayers
      return Newplayer.where(user_id: self.id)
    end
end
