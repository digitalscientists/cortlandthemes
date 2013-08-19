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


  Mercury.load
    snippet2:
      data: {}
      snippets:
        c1:
          cid: 'c1'
    name: 'beer'
    attributes:
      name: 'jejacks0n'
      beer: 'French & Belgian-Style Saison'

    c2:
      cid: 'c2'
      name: 'plugins'

    value: "<div class=\"mercury-beer-snippet\" data-mercury-snippet=\"c1\"><h3>jejacks0n's favorite type of beer is French &amp; Belgian-Style Saison</h3>\n<p>\n  Beers in this category are golden to deep amber in color. There may be quite a variety of characters within this style. Generally: They are light to medium in body. Malt aroma is low to medium-low. Esters are medium to high in aroma, while, complex alcohols, herbs, spices, low Brettanomyces character and even clove and smoke-like phenolics may or may not be evident in the overall balanced beer. Hop aroma and flavor may be at low to medium levels. Malt flavor is low but provides foundation for the overall balance. Hop bitterness is moderate to moderately assertive. Herb and/or spice flavors, including black pepper-like notes, may or may not be evident. Fruitiness from fermentation is generally in character. A balanced small amount of sour or acidic flavors is acceptable when in balance with other components. Earthy, cellar-like, musty aromas are okay. Diacetyl should not be perceived. Chill or slight yeast haze is okay. Often bottle conditioned with some yeast character and high carbonation. French &amp; Belgian-Style Saison may have Brettanomyces characters that are slightly acidity, fruity, horsey, goaty and/or leather-like.\n</p>\n</div><div class=\"mercury-plugin-snippet\" data-mercury-snippet=\"c2\"></div>"

    html1:
      snippets:
        c3:
          cid: 'c3'
          name: 'plugins'
      value: "<div class=\"mercury-plugin-snippet\" data-mercury-snippet=\"c3\"></div>"