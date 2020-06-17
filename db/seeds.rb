# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
cats = [
  {
    name: 'Abigal',
    age: 25,
    enjoys: 'Long naps on the couch, and sexy hairless cats.'
  },
  {
    name: 'Homer',
    age: 62,
    enjoys: 'Food mostly, and wicked cute cats.'
  },
  {
    name: 'Douglas',
    age: 2,
    enjoys: 'red sox is life, licking himself.'
  }
]

cats.each do |attributes|
  Cat.create attributes
end

