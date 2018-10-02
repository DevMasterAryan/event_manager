class User < ApplicationRecord
 has_many :event_attendings, foreign_key: "event_attendee_id"
 has_many :attended_events, through: :event_attendings, source: :attended_event

 has_many :created_events, foreign_key: :manager_id, class_name: "Event", dependent: :destroy
#validattion goes here
 validates :name, presence: true
 
end
