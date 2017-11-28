$(function () {
  isMobile = ('ontouchstart' in document.documentElement);

  navigation = $('header nav ul');

  resizeVideo = function () {
    $('.video iframe').attr('height', $('#banner').outerHeight());
  };

  iconMenuTriggered = function (e) {
    e.preventDefault();

    if (navigation.hasClass('show')) {
      navigation.slideUp({
        queue: false,
        done: function () {
          $(this).attr('style', '');
        }
      }).removeClass('show');
    } else {
      navigation.slideDown({
        queue: false
      }).addClass('show');
    }
  };

  watchVideoTriggered = function (e) {
    e.preventDefault();

    if ($('.video').hasClass('show')) {
      $('.video').fadeOut({
        queue: false
      }).removeClass('show');
      $(this).removeClass('show');
      $('.button-video').removeClass('hide');
    } else {
      $('.video').fadeIn({
        queue: false
      }).addClass('show');
      $(this).addClass('hide');
      $('.close-video').addClass('show');
    }
  };

  $('.icon-menu').bind(isMobile ? 'touchstart' : 'click', iconMenuTriggered);
  $('.button-video').bind('click', watchVideoTriggered);
  $('.close-video').bind('click', watchVideoTriggered);

  $(window).resize(resizeVideo);
  resizeVideo();
});
