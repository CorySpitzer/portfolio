# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ email: 'admin@admin.com',
                       password: 'ReallyGoodPassword', admin: true},
                     { email: 'guest@guest.com',
                       password: '12341234', admin: false}])
