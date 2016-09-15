$ ->
  $('#calendar-schedule').fullCalendar(
    defaultView: 'month'
    header:
      left: 'title',
      center: '',
      right: 'prev,next today month,agendaWeek'
    schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives'
    events: '/schedules/get_events.json'
    dayClick: (date, jsEvent, view) ->
      $.ajax(
        url: '/schedules/new'
        data:
          start: date.format('YYYY/MM/DD HH:mm')
      )
    eventRender: (event, element) ->
      element.qtip(
        content:
          text: event.tooltip
          title:
            text: '出ろよ'
            button: true
        show:
          solo: true
        hide: false
        style:
          classes: 'qtip-blue qtip-rounded'
      )
  )
