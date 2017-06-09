# README

There are three model named User, Event and EventAttending

User can be a manager for subordinate


User.create(name: "anyname", ismanger: true) # ismanger: true if u want to create a manager

User.create(name: "anyother name") # ismanager by default is set to false



# find first manager from multiple managers

user = User.find_by(ismanager: true).first 


# check created events by that manager
user.created_events

# create event by that manger
user.created_events.create(name: "name_of_event", date: "date_of_event")

#now check created_events
user.created_events


# check user attending events
Event.first.attendees

# create attendees for event

Event.first.attendees << User.find_by(id: 2)      

#check event manager
Event.first.manager



