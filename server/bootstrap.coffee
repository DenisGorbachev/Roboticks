root = exports ? this

Meteor.startup ->
  if root.Sectors.find().count() is 0
    sectorsData = [
      {
        x: 0
        y: 0
        letter: 'A'
        drop: ['B', 'E']
      }
    ]
    for sectorData, i in sectorsData
      sectorData._id = root.Sectors.insert(sectorData)
