# Write your code here.

def badge_maker name
  "Hello, my name is #{name}."
end

def batch_badge_creator names
  badge_names = []
  names.each {|name| badge_names.push(badge_maker name)}
  return badge_names
end

def assign_rooms speakers
  assigned_rooms = []
  speakers.each_with_index {|speaker, index| assigned_rooms.push "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"}
  assigned_rooms
end

def printer names
  batch_badge_creator(names).each {|badge_message| puts badge_message}
  assign_rooms(names).each {|assignment_message| puts assignment_message}
end
