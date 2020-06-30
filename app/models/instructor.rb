!class Instructor

    attr_accessor :instructor_name

    @@all = []

    def initialize(instructor_name)
        @instructor_name = instructor_name
        @@all << self
    end

    def pass_student(stundent, test_name)
        #if there is a BoatingTest whose name and student match the values passed in, this method should update the status of that BoatingTest to "passed".
        #if there is no matching test, this method should create a test with the student, that boat test name, and the status passed. This
        #Either way, it should return the BoatingTest instance.
        BoatingTest.all.map {|test| pp test.first_name}
    end

    def fail_student(stundent_inst, test_name)
        # like pass_student it should try to find a matching BoatingTest and update the status to "failed".
        # If it cannot find a matching BoatingTest, it should create a BoatingTest with the matching student and set status to failed.

    end

    
end
