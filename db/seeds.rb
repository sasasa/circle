# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(1..15).each do
  FactoryGirl.build(:school).save
end
puts School.count

(1..40).each do
  FactoryGirl.build(:group).save
end
puts Group.count

(1..80).each do
  FactoryGirl.build(:lesson).save
end
puts Lesson.count

(1..200).each do
  u = FactoryGirl.build(:user)
  u.school = School.find_by(id: rand(School.first.id..School.last.id))
   rand(5..15).times do
    u.lessons << Lesson.find_by(id: rand(Lesson.first.id..Lesson.last.id))
  end
  rand(3..6).times do
    u.groups << Group.find_by(id: rand(Group.first.id..Group.last.id))
  end
  u.save
end
puts User.count