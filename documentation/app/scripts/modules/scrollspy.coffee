$ = require('jquery');
require('bootstrap/js/scrollspy');

module.exports = class Scrollspy
  init: (isMobile) ->
    $('body').scrollspy
      target: '#doc-navigation'
      offest: 0

    if isMobile isnt true
      $('#doc-navigation').on 'activate.bs.scrollspy', (evt) ->
        $ct = $(evt.currentTarget)
        $active = $ct.find '.active'
        $navLi = $('.nav li')

        $navLi.removeClass 'open-subnav'
        $active.addClass 'open-subnav'

        if $active.parents '.active'
          $active.parents('li')
            .removeClass('active')
            .addClass 'open-subnav'

        hash = $active.find('> a').attr('href')
        id = hash.replace('#','')
        $dom = $(hash)

        # Remove the ID from the DOM to prevent the window from scrolling as
        # hash in the URL is being changed
        $dom.attr('id','')
        if history.pushState
          history.replaceState('', hash, hash)
        else
          location.replace(hash)

        # Then add the ID back into the DOM from where it was removed
        $dom.attr('id',id)
