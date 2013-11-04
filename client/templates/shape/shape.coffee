root = exports ? this

Template.shape.type = ->
  type = this.type
  if (this.userId? == Meteor.userId())
    type += "own"
  type

Template.shape.top = ->
  root.sectorSize*(this.coordinates[1] - (Meteor.user().y - root.viewDistance))

Template.shape.left = ->
  root.sectorSize*(this.coordinates[0] - (Meteor.user().x - root.viewDistance))

Template.shape.body = ->
  Template[this.type](this);
