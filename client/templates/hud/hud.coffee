root = exports ? this

Template.hud.map = ->
  artefacts = root.Artefacts.find()
  map = []
  for i in [-10...11] by 1
    row = []
    for j in [-10...11] by 1
      sector = {}
      if (i == 0 && j == 0)
        sector.own = true
      row.push(sector)
    map.push(row)
  map

Template.hud.rendered = ->
  addthis.toolbox('.addthis_toolbox')
  addthis.counter('.addthis_counter');

Template.hud.events
  'click .log-out': ->
    Meteor.logout()
    false
