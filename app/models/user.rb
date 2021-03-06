class User < ApplicationRecord
  has_many :created_events, foreign_key: 'creator_id', class_name: 'Event'
  has_many :event_attendees, foreign_key: :attendee_id
  has_many :attended_events, through: :event_attendees, class_name: 'Event'

  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
end
