class Instructor
        attr_reader :name

        @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    

    def pass_student(stu, exam)
        Boatingtest.all.select do |id| 
            if id.student == stu && id.test_name == exam
                id.test_status = "passed"
            elsif id.test_name != exam
                stu.add_boat_test(exam, "passed", self)
            end
        end
    end

    def fail_student(stu, exam)
        Boatingtest.all.select do |id| 
            if id.student == stu && id.test_name == exam
                id.test_status = "failed"
            elsif id.test_name != exam
                stu.add_boat_test(exam, "failed", self)
            end
        end
    end


end
