# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Position.create([{ name: 'President' }, { name: 'Vice President' }, { name: 'Fundraising Chair' }, { name: 'Social Chair' },
                 { name: 'PR Chair' }, { name: 'Spirit Chair' }, { name: 'Member' }])

Semester.create([{ name: 'Fall 2019' }, { name: 'Spring 2020' }])
