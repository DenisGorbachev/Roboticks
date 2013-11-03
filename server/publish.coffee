root = exports ? this

root.Artefacts = new Meteor.Collection 'artefacts'
root.Artefacts._ensureIndex({ coordinates : "2d" });

Meteor.publish('visible-artefacts', () ->
  if (!this.userId)
    return null;
  user = Meteor.user()
  root.Artefacts.find(
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
