class Community < ApplicationRecord
  has_many :ledgers
  has_many :users, through: :ledgers
  has_many :posts
end
