class Event < ApplicationRecord
  has_many :event_attendings, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendings, source: :event_attendee
  
  belongs_to :manager, -> {where(ismanager: true)}, class_name: 'User'

  validates :name, presence: true
  validates :date, presence: true
end
