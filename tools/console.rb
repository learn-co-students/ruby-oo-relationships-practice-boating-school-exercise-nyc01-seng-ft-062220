require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

st1 = Student.new("Duke")
st2 = Student.new("Sue")
st3 = Student.new("Lil")
st4 = Student.new("Kyle")
st5 = Student.new("Jin")
st6 = Student.new("Des")

ins1 = Instructor.new("Kevin")
ins2 = Instructor.new("Sarah")
ins3 = Instructor.new("Peg")

st1.add_boat_test("How To Quit", "pending", ins1)
st2.add_boat_test("How To Quit", "pending", ins1)
st3.add_boat_test("How To Quit", "pending", ins1)
st4.add_boat_test("How To Quit", "pending", ins1)
st5.add_boat_test("How To Quit", "pending", ins1)

st1.add_boat_test("Jump", "pending", ins2)
st2.add_boat_test("Jump", "pending", ins2)
st3.add_boat_test("Jump", "pending", ins2)
st4.add_boat_test("Jump", "pending", ins2)
st5.add_boat_test("Jump", "pending", ins2)

st1.add_boat_test("Drive 101", "pending", ins3)
st2.add_boat_test("Drive 101", "pending", ins3)
st3.add_boat_test("Drive 101", "pending", ins3)
st4.add_boat_test("Drive 101", "pending", ins3)
st5.add_boat_test("Drive 101", "pending", ins3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

