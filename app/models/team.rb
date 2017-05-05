class Team < ApplicationRecord
  belongs_to :user
  validates :teamname, presence: true
  validates :user_id, presence: true
end
