# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s =ExerciseType.create(name: 'Shoulders')
a =ExerciseType.create(name: 'Arms')
b =ExerciseType.create(name: 'Back')
c =ExerciseType.create(name: 'Chest')
l =ExerciseType.create(name: 'Legs')
d =ExerciseType.create(name: 'Abs')


Exercise.create(hours: 2, number: 232, exercise_type_id: s.id)
Exercise.create(hours: 1, number: 342, exercise_type_id: a.id)
Exercise.create(hours: 2, number: 764, exercise_type_id: b.id)
Exercise.create(hours: 3, number: 345, exercise_type_id: c.id)
Exercise.create(hours: 5, number: 888, exercise_type_id: l.id)


Step.create(number: 200, created_at: "2012-02-27 00:00:00.744079")
Step.create(number: 1423, created_at: "2013-02-27 00:00:00.744079")
Step.create(number: 8272, created_at: "2014-02-27 00:00:00.744079")
Step.create(number: 7371, created_at: "2015-02-27 00:00:00.744079")


Kilocal.create(number: 230, meal_type: 'Breakfast', created_at: "2012-02-27 00:00:00.744079")
Kilocal.create(number: 500, meal_type: 'Lunch', created_at: "2013-02-27 00:00:00.744079")
Kilocal.create(number: 765, meal_type: 'Breakfast', created_at: "2014-02-27 00:00:00.744079")
Kilocal.create(number: 1234, meal_type: 'Brinner', created_at: "2015-10-03 00:00:00.744079")
Kilocal.create(number: 344, meal_type: 'Snack', created_at: "2015-10-03 00:00:00.744079")
Kilocal.create(number: 432, meal_type: 'Dinner', created_at: "2015-10-03 00:00:00.744079")

Weight.create(weight: 125, created_at: "2012-02-27 00:00:00.744079")
