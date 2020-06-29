require 'pry'

class Student

    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(name,status,instructor)
        BoatingTest.new(self,name,status,instructor)
    end

    def self.find_student(name)
        self.all.find do |element|
            element.name == name
        end
    end

    def grade_percentage
        array = BoatingTest.all.select do |element|
            element.student == self
        end

        passed_tests = array.select do |element|
            element.status == "passed"
        end

        (passed_tests.length.to_f/array.length.to_f)*100
    end
end

# should initialize with first_name
# Student.all should return all of the student instances
# Student#add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# Student.find_student will take in a first name and output the student (Object) with that name
# Student#grade_percentage should return the percentage of tests that the student has passed, 
# Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)