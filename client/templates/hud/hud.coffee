Template.hud.rows = ->
  rows = []
  for i in [0..21] by 1
    row = []
    for j in [0..21] by 1
      row.push
        letter: 'A'
    rows.push(row)
  rows

Template.hud.rendered = ->
  addthis.toolbox('.addthis_toolbox')
  addthis.counter('.addthis_counter');

Template.hud.events
  'click .log-out': ->
    Meteor.logout()
    false
