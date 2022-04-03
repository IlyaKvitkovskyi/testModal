$(document).ready(function () {
  $('#setCookie').click(function () {
    var date = new Date();
    date.setTime(date.getTime() + 60 * 1000);
    $.cookie('popup', '', { expires: date, path: '/' });
    $('#bg_popup').hide();
  });

  if ($.cookie('popup') == null) {
    setTimeout(function () {
      $('#bg_popup').show();
    }, 2000);
  } else {
    $('#bg_popup').hide();
  }
});
