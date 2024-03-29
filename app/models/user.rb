class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :donations
  has_many :sponsorships

  before_create :set_default_petCoins

  private

  def set_default_petCoins
    self.petCoins ||= 1000
  end
end