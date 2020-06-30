class Student

    attr_accessor :student_inst

    @@all = []

    def initialize(student_inst)
        @student_inst = student_inst
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instr_inst)
        BoatingTest.new(self, test_name, test_status, instr_inst)
    end

    def self.find_stundent(first_name)
        #will take in a first name and output the student object with that name
        Student.all.select {|student| student.student_inst == first_name}
    end

    def grade_percentage
        #should return a percentage of tests that the student has passed as a float.
        passed = 0
        total = 0
        BoatingTest.all.each do |test|
            total += 1
            passed += 1 if test.test_status == "passed"
        end
        percentage = (passed.to_f / total.to_f) * 100.0
        percentage.to_f.round(2)
    end
end
