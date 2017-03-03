# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

students = [{firstname: "Jimmy", lastname: "Give", favoritemovie: "Frozen"},
            {firstname: "Margo", lastname: "Zack", favoritemovie: "Moana"}, 
            {firstname: "John", lastname: "Dow", favoritemovie: "Frozen"}, 
            {firstname: "John", lastname: "Sweet", favoritemovie: "Cars"}]

students.each do |student|
  Student.create(firstname: student[:firstname], lastname: student[:lastname], favoritemovie: student[:favoritemovie])
end