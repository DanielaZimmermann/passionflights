# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

destinations = Destination.create([{ iata_code: 'BIQ', city: 'Biarritz', continent: 'Europe', season_months: '111110001111' }, 
	{ iata_code: 'BOD', city: 'Bordeaux', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'BES', city: 'Brest', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'FAO', city: 'Faro', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'LIS', city: 'Lisbon', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'OPO', city: 'Porto', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'BIO', city: 'Bilbao', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'FUE', city: 'Fuerteventura', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'LPA', city: 'Gran Canaria', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'XRY', city: 'Jerez', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'SDR', city: 'Santander', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'SCQ', city: 'Santiago de Compostela', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'TFN', city: 'Tenerife North', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'TFS', city: 'Tenerife South', continent: 'Europe', season_months: '111110001111' },
	{ iata_code: 'AGA', city: 'Agadir', continent: 'Africa', season_months: '111110001111' },
	{ iata_code: 'ESU', city: 'Essaouira', continent: 'Africa', season_months: '111110001111' }
	])

searches = Search.create([{ outbound: 'Frankfurt', flight_duration: 4, departure: Date.parse('01-11-2016'), return: Date.parse('15-11-2016')}])
