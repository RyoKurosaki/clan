json.array! @schedules do |schedule|
  json.id "#{schedule.id}"
  json.title "#{schedule.name}"
  json.start "#{schedule.event_start}"
  json.end "#{schedule.event_end}"
  json.tooltip ""
end
