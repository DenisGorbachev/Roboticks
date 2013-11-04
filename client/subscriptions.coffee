root = exports ? this

root.Shapes = new Meteor.Collection('shapes', {
  transform: (shape) ->
    shape
})

Meteor.subscribe 'visibleShapes'
Meteor.subscribe 'userData'
