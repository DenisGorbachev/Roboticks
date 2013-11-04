root = exports ? this

Accounts.onCreateUser((options, user) ->
  if (options.profile)
    user.profile = options.profile
  user.x = 0
  user.y = 0
  user
);

Meteor.startup ->
  if root.Shapes.find().count() is 0
    shapesData = [
      {
        coordinates: [0, 0]
        type: 'letter'
        data: 'A'
      }
    ]
    for sectorData, i in shapesData
      sectorData._id = root.Shapes.insert(sectorData)
