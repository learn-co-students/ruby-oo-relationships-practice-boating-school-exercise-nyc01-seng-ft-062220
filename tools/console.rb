require_relative '../app/models/student.rb'
require_relative '../app/models/instructor.rb'
require_relative '../app/models/boatingtest.rb'

require 'pry'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new('Bill')
student2 = Student.new('Sue')
student3 = Student.new('Bob')
student4 = Student.new('Hank')
student5 = Student.new('Dean')
student6 = Student.new('Brock')

instructor1 = Instructor.new('Baxtor')
instructor2 = Instructor.new('Higgins')
instructor3 = Instructor.new('Dawson')

boatingtest1 = student1.add_boating_test("Don't Crash 101", "pending", instructor1)
boatingtest2 = student1.add_boating_test("Don't Crash 101", "pending", instructor1)
boatingtest3 = student1.add_boating_test("Don't Crash 101", "pending", instructor2)
boatingtest4 = student1.add_boating_test("Don't Crash 101", "pending", instructor2)
boatingtest5 = student1.add_boating_test("Don't Crash 101", "pending", instructor2)
boatingtest6 = student1.add_boating_test("Don't Crash 101", "pending", instructor2)

puts instructor1.pass_student(student5, boatingtest5)



0 #leave this here to ensure binding.pry isn't the last line

