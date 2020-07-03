require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

test1=BoatingTest.new(patrick, "test1", "passed", krabs)
test2=BoatingTest.new(patrick, "test2", "passed", krabs)
test3=BoatingTest.new(patrick, "test3", "passed", krabs)
test4=BoatingTest.new(patrick, "test4", "fail", krabs)

#spongebob.add_boating_test("Don't Crash 101", puff, "pending")
#patrick.add_boating_test("Power Steering 202", puff, "failed")
#patrick.add_boating_test("Power Steering 201", krabs, "passed")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

