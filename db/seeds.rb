# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Users = ['Enzo', 'Juan', 'Pedro', 'Perro', 'Jose', 'Diego', 'Pepito', 'Juanito', 'Cristiano', 'Pedrin', 'Benito']

50.times do
	index = Random.new.rand(4)
	User.create(name: Users[index], age: Random.new.rand(70))
end
