class User < ApplicationRecord
  has_many :donations
  has_many :sponsorships
end