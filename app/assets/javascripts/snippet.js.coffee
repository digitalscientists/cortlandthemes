#Mercury.registerSnippet 'editable-gables',
#  title: 'Gables Snippet'
#  description: "Gables Snippet Example"
#  version: '1.0.0'
#
#  template: ->
#    """
#    <div class="row">
#    <img class="span-2"  src="./assets/rails.png" width="50" />
#    <div class="span-3">
#    <div data-mercury="markdown">Markdown Region</div>
#    <div data-mercury="plain">Plain Region</div>
#    </div>
#    </div>
#    """
#
#  afterRender: ->
#    textarea = @renderedView.$('textarea[data-mercury-region]')   # handling for textarea regions -- eg. text/markdown
#    textarea.parent().html(textarea.val())
#    Mercury.trigger('reinitialize')                               # tell mercury that we have new regions to initialize.
#
#  toJSON: ->
#    $.extend(true, {}, @attributes, {regions: @subRegions()})
#
#  subRegions: ->
#    regions = {}
#    for el in @renderedView?.$('[data-mercury]') || []
#      continue unless region = $(el).data('region')
#      regions[region.name] = region.toJSON(true)
#    regions
