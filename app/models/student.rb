require 'pry'
class Student
    attr_accessor :first_name
    @@all=[]
def initialize(first_name)
    @first_name=first_name
    @@all << self
end
 
def self.all
    @@all 
end 
 
def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
end 

def self.find_student(name)
    all.select {|student| student.first_name==name}
end

def grade_percentage
    total_tests=BoatingTest.all.select {|test| test.student == self}
    passed_tests=total_tests.select {|test| test.test_status == "passed"}
    passed_tests.to_f
    total_tests.to_f
    percentage=passed_tests.length*100/total_tests
end
end