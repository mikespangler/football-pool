# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bowl.create(name: 'Hawaii', date: '12/24', played?: true, favorite: 'Oregon St.', underdog: 'Boise St.', winner: nil, spread: 3)

Bowl.create(name: 'Fight Hunger', date: '12/27', played?: true, favorite: 'Washington', underdog: 'BYU', winner: nil, spread: 3)

Bowl.create(name: 'Pinstripe', date: '12/28', played?: true, favorite: 'Notre Dame', underdog: 'Rutgers', winner: nil, spread: 15)

Bowl.create(name: 'Russell Athletic', date: '12/28', played?: true, favorite: 'Louisville', underdog: 'Miami', winner: nil, spread: 3)

Bowl.create(name: 'Alamo', date: '12/30', played?: true, favorite: 'Oregon', underdog: 'Texas', winner: nil, spread: 14)

Bowl.create(name: 'Holiday', date: '12/30', played?: true, favorite: 'ASU', underdog: 'Texas Tech', winner: nil, spread: 14)

Bowl.create(name: 'Rose', date: '1/1', played?: 'true', favorite: 'Stanford', underdog: 'Michigan St.', winner: nil, spread: 4)

Bowl.create(name: 'BCS Championship', date: '1/6', played?: false, favorite: 'Florida St.', underdog: 'Auburn', winner: nil, spread: 7)











