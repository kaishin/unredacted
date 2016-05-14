$(function() {
  return $(".post-summary time").each(function() {
    var time;
    time = $(this).attr("datetime");
    return $(this).html(moment(time).fromNow());
  });
});
