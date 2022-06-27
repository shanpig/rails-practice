class Group < ApplicationRecord
  has_many :events, through: :event_groupships
  has_many :event_groupships
end
