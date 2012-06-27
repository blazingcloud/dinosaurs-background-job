# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Species.create([{scientific_name: 'Tyrannosaurus Rex', common_name: 'T-Rex', era: 'Cretaceous'},
                {scientific_name: 'Quetzalcoatlus', common_name: 'Quetzalcoatlus', era: 'Late Cretaceous'},
                {scientific_name: 'Pachycephalosaurus', common_name: 'Pachycephalosaurus', era: 'Late Cretaceous'}])