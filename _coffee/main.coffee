$ ->
  $("time").each ->
    time = $(@).attr("datetime")
    $(@).html moment(time).fromNow()
