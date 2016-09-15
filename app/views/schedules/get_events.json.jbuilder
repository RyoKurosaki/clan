json.array! @schedules do |schedule|
  json.id "#{schedule.id}"
  json.title "#{schedule.name}"
  json.start "#{schedule.event_start}"
  json.end "#{schedule.event_end}"
  json.tooltip "<p><h6>#{schedule.name}</h6></p>\
                【作成者】#{schedule.user.name}<br>\
                【予定開始時間】#{schedule.event_start}<br>\
                【予定終了時間】#{schedule.event_end}<br><br>\
                #{link_to '編集', edit_schedule_path(schedule), remote: true, class:'btn btn-default btn-xs btn-block'}"
end
