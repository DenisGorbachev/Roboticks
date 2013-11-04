root = exports ? this

root.Shapes = new Meteor.Collection 'shapes'
root.Shapes._ensureIndex({ coordinates : "2d" });

Meteor.publish('visibleShapes', () ->
  if (!this.userId)
    return null;
  user = Meteor.users.findOne(this.userId);
  root.Shapes.find(
    coordinates:
      $geoWithin:
        $box: [ [user.x - root.viewDistance, user.y - root.viewDistance], [user.x + root.viewDistance, user.y + root.viewDistance] ]
  )
)

Meteor.publish('userData', () ->
  if (!this.userId)
    return null;
  Meteor.users.find(this.userId, {
    fields: {
      x: 1
      y: 1
    }
  })
)
