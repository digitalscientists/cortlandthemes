$ ->
  sticky = document.querySelector('.sticky')
  sidenav = document.querySelector('.side-nav')
  themeNav = document.querySelector('.theme-nav-toggle')
  contentArea = document.querySelector('.content-body')

  if sticky.style.position isnt 'sticky'
  then stickyTop = sticky.offsetTop

  n = 0
  document.addEventListener 'scroll', () ->
    if window.scrollY >= stickyTop
    then hideRightNavAndStickTopNav()
    else sticky.classList.remove('fixed')
    n = window.scrollY

    if window.scrollY >= stickyTop
    then opacity = window.scrollY / 1000;
    else opacity = 0

    $(sticky).css('box-shadow', '0 3px 5px rgba(222, 222, 222, ' + opacity + ')');

  hideRightNavAndStickTopNav = ->
    sticky.classList.add('fixed')
    if sidenav.clientWidth > 2
    then closeSideNav()


  closeSideNav = ->
    TweenMax.to(sidenav, .2, {width:0})
    TweenMax.to(contentArea, .2, {marginRight: 0})

  openSideNav = ->
    TweenMax.to(sidenav, .2, {width:250})
    TweenMax.to(contentArea, .2, {marginRight: 250})

  $(themeNav).on 'click', () ->
    if sidenav.clientWidth > 2
    then closeSideNav()
    else openSideNav()