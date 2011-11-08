# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

users = User.create([
  {:username => 'user01', :email => 'user01@example', :password => 'pass01', :password_confirmation => 'pass01'},
  {:username => 'user02', :email => 'user02@example', :password => 'pass02', :password_confirmation => 'pass02'},
])
