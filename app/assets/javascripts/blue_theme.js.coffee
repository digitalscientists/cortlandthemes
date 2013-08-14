$ ->
  sticky = document.querySelector('.sticky')
  sidenav = document.querySelector('.side-nav')
  themeNav = document.querySelector('.theme-nav-toggle')
  contentArea = document.querySelector('.content-body')

  if sticky.style.position isnt 'sticky'
  then stickyTop = sticky.offsetTop

  document.addEventListener 'scroll', () ->
    if window.scrollY >= stickyTop
    then hideRightNavAndStickTopNav()
    else sticky.classList.remove('fixed')

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

  themeNav.addEventListener 'click', () ->
    if sidenav.clientWidth > 2
    then closeSideNav()
    else openSideNav()