$(function() {
  return $(".post-summary time").each(function() {
    var time;
    time = $(this).attr("datetime");
    var dateText = moment(time).fromNow();
    dateText = dateText.charAt(0).toUpperCase() + dateText.slice(1)
    return $(this).html(dateText);
  });
});
