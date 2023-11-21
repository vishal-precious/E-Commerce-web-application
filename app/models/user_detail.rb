class UserDetail < ApplicationRecord
  belongs_to :user
  enum role: [:seller, :buyer]
end
