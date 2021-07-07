require "pry"

class Student
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test (name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student (name)
        self.all.find {|s| s.name == name}
    end

    def tests
        BoatingTest.all.select {|t| t.student == self}
    end
     
    def grades 
        self.tests.map {|t| t.status}
    end


    def grade_percentage
        passed = self.grades.select {|g| g == "passed"}
        (passed.count.to_f / self.grades.count.to_f) * 100
    end

end
