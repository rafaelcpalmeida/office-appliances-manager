# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#x
Location.create [{name: '3.10'}, {name: '3.19'}, {name: '3.20'}]
SsshhOMatic.create [{name: 'Chato', location_id: Location.find_by(name: '3.19').id, ip: '1.1.1.1', decibels_limit: '62.5'}, {name: 'Chato', location_id: Location.find_by(name: '3.20').id, ip: '1.1.1.2', decibels_limit: '60'}]
AirQualityMachine.create [{name: 'Chato', location_id: Location.find_by(name: '3.19').id, ip: '1.1.1.3'}, {name: 'Chato', location_id: Location.find_by(name: '3.20').id, ip: '1.1.1.4'}]
SsshhOMaticRecord.create [{appliance: SsshhOMatic.first, decibels_value: '66'}]
AirQualityMachineRecord.create [{appliance: AirQualityMachine.second, temperature: '25', carbon_dioxide_level: '30', humidity_level: '15'}]