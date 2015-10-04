# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s =ExerciseType.create(name: 'Shoulders')
a =ExerciseType.create(name: 'Arms')
b = ExerciseType.create(name: 'Back')
c =ExerciseType.create(name: 'Chest')
l = ExerciseType.create(name: 'Legs')
d =ExerciseType.create(name: 'Abs')


Exercise.create(hours: 2, cals_per_hour: 232, exercise_type_id: s.id)
Exercise.create(hours: 1, cals_per_hour: 342, exercise_type_id: a.id)
Exercise.create(hours: 2, cals_per_hour: 764, exercise_type_id: b.id)
Exercise.create(hours: 3, cals_per_hour: 345, exercise_type_id: c.id)
Exercise.create(hours: 5, cals_per_hour: 888, exercise_type_id: l.id)


Step.create(number: 200)
Step.create(number: 1423)
Step.create(number: 8272)
Step.create(number: 7371)


Kilocal.create(number: 230)
Kilocal.create(number: 500)
Kilocal.create(number: 765)
Kilocal.create(number: 1234)
