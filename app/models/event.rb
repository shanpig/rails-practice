class Event < ApplicationRecord
  validates_presence_of :name
  has_many :attendees
  has_many :groups, through: :event_groupships
  has_many :event_groupships
end
