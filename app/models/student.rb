class Student
        attr_reader :first_name

        @@all = [] 
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boat_test(test_name, test_status, instructor)
        Boatingtest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        Boatingtest.all.select {|id| id.student == name}
    end

    def test_count
        Boatingtest.all.select {|id| id.student == self}.size
    end

    def grade_percentage
        passed_test = Boatingtest.all.select {|id| id.student == self && id.test_status == "passed"}.size
        (passed_test.to_f/self.test_count * 100).round(2)
    end


end
