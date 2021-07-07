require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sponge = Student.new("Spongebob")
patrick = Student.new("Patrick")

puffs = Instructor.new("Mrs. Puff")
krabs = Instructor.new("Mr. Krabs")
squid = Instructor.new("Squidward")

test1 = BoatingTest.new(sponge, "test1", "failed", puffs)
test2 = BoatingTest.new(sponge, "test2", "failed", krabs)
test3 = BoatingTest.new(sponge, "test3", "failed", squid)
test4 = BoatingTest.new(sponge, "test4", "passed", puffs)
test5 = BoatingTest.new(patrick, "test5", "passed", puffs)

sponge.add_boating_test("test6", "failed", puffs)

puffs.pass_student(sponge, "test21")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

