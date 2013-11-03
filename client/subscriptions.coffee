root = exports ? this

root.Tasks = new Meteor.Collection('sectors', {
  transform: (sector) ->
    sector
})

Meteor.subscribe 'sectors'
