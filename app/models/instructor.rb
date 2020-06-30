!class Instructor

    attr_accessor :instr_inst

    @@all = []

    def initialize(instr_inst)
        @instr_inst = instr_inst
        @@all << self
    end

    def pass_student(student, test_name)
        #if there is a BoatingTest whose name and student match the values passed in, this method should update the status of that BoatingTest to "passed".
        #if there is no matching test, this method should create a test with the student, that boat test name, and the status passed. This
        #Either way, it should return the BoatingTest instance.
        test_find = BoatingTest.all.find { |test| test.student_inst == student && test == test_name }
            if test_find
                test_find.test_status = "passed" 
            else
                BoatingTest.new(student, test_name, "passed", self)
            end  
    end

    def fail_student(student, test_name)
        # like pass_student it should try to find a matching BoatingTest and update the status to "failed".
        # If it cannot find a matching BoatingTest, it should create a BoatingTest with the matching student and set status to failed.
        test_find = BoatingTest.all.find { |test| test.student_inst == student && test == test_name }
        if test_find
            test_find.test_status = "failed" 
        else
            BoatingTest.new(student, test_name, "failed", self)
        end  
    end

    
end
