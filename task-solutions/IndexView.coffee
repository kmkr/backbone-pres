class np.views.IndexView extends Backbone.View
  template: _.template(np.templates.IndexTemplate)

  initialize: ->
    @collection.on('add', @render)

  showAnimals: ->
    ul = $('<ul>')
    @collection.forEach( (animal) =>
      li = $('<li>').text(animal.get('type'))
      ul.append(li)
    )
    @$el.append(ul)
    @$('li:last').hide().show('slow')

  renderAddAnimalView: ->
    view = new np.views.AddAnimalView({collection: @collection})
    @$el.append(view.render().el)

  render: =>
    console.log @
    @$el.html(@template)
    @showAnimals()
    @renderAddAnimalView()
    @
