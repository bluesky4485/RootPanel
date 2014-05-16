$ ->
  $('#create-ticket').on 'click', (e) ->
    e.preventDefault()
    data = {
      type: $('#type').val()
      title: $('#title').val()
      content: $('#ticket-content').val()
    }

    $.ajax {
      method: 'post'
      url: '/ticket/create/'
      data: data
    }
    .done (reply) ->
      location.href = '/ticket/list/'
    .fail (reply) ->
      if reply.status is 400
        error = reply.responseJSON.error
        ErrorHandle.flushInfo 'alert', error
