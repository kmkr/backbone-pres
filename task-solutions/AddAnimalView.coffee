class np.views.AddAnimalView extends Backbone.View

  template: _.template(np.templates.AddAnimalTemplate)

  events:
    "keypress input[name=type]"   : "addAnimalOnEnter"

  addAnimalOnEnter: (e) ->
    if e.keyCode is 13
      @collection.add({type: $(e.currentTarget).val()})

  render: ->
    @$el.html(@template)
    @
