# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.create([{email:'emilia@ctjmb.org', password: 'abc', password_confirmation: 'abc', user_type: 'admin'},{email:'assistant@ctjmb.org', password: 'abc', password_confirmation: 'abc', user_type: 'admin'},{email:'rabbi.carrie@ctjmb.org', password: 'abc', password_confirmation: 'abc', user_type: 'admin'}])