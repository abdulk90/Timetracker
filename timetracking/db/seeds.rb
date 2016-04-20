project1=Project.create(name:"Abdul", description:"Awesome person")
project2=Project.create(name:"Hazel", description:"Awesome dog")
project3=Project.create(name:"Lina", description:"Awesome Roomie")

project1.time_entries.create(project_id:1, hours:3, minutes:43,comment:"Me", date:Time.new )
project2.time_entries.create(project_id:2, hours:4, minutes:23,comment:"Dog", date:Time.new )
project3.time_entries.create(project_id:3, hours:2, minutes:63,comment:"Roomie", date:Time.new )




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Examples:

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
