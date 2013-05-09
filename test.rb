require './app.rb'

cohort = Cohort.find(1)
cohort[:name] = 'Blah Best Ever'
cohort.save

puts Cohort.find(1)[:name] == 'Blah Best Ever'


cohort = Cohort.where('name = ?', 'Alpha').first
puts cohort.students.count > 1
puts cohort[:name] == 'Alpha'

students = Student.all
puts students.count
# puts students.find(1)[:first_name].first = 'Jack'
# puts students.find(1)[:first_name].first == 'Jack'
