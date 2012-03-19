$ ->
  animals = [
    new np.models.Animal({ type: 'lion'})
    new np.models.Animal({ type: 'saw fish'})
    new np.models.Animal({ type: 'pangolin'})
    new np.models.Animal({ type: 'narwhal'})
    new np.models.Animal({ type: 'meercat'})
    new np.models.Animal({ type: 'lynx'})
    new np.models.Animal({ type: 'heron'})
  ]

  np.collections.nationalPark = new np.collections.NationalPark(animals)

  new np.routers.Router()
  Backbone.history.start()
