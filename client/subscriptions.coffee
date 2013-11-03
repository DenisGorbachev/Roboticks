root = exports ? this

root.Artefacts = new Meteor.Collection('artefacts', {
  transform: (sector) ->
    sector
})

Meteor.subscribe 'artefacts'
Meteor.subscribe 'userData'
