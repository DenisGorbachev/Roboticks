root = exports ? this

Accounts.onCreateUser((options, user) ->
  if (options.profile)
    user.profile = options.profile
  user.x = 0
  user.y = 0
  console.log(user);
  user
);

Meteor.startup ->
  if root.Artefacts.find().count() is 0
    artefactsData = [
      {
        x: 0
        y: 0
        type: 'letter'
        data: 'A'
      }
    ]
    for sectorData, i in artefactsData
      sectorData._id = root.Artefacts.insert(sectorData)
