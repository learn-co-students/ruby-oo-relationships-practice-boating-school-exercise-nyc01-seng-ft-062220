class Instructor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def test_find(student,name)
        BoatingTest.all.find do |element|
            element.student == student && element.name == name
        end
    end

    def pass_student(student, test)
        # if test_find(student,test) == nil
        #     Test.new(student, test, "passed")
        # else
        #     test_find(student,test).status = "passed"
        # end
        test_find(student,test) == nil ? BoatingTest.new(student, test, "passed", self) : test_find(student,test).status = "passed"
    end

    def fail_student(student, test)
        # if test_find(student,test) == nil
        #     Test.new(student, test, "failed")
        # else
        #     test_find(student,test).status = "failed"
        # end
        test_find(student,test) == nil ? BoatingTest.new(student, test, "failed", self) : test_find(student,test).status = "failed"
    end

end

# Instructor#pass_student should take in a student instance and test name. 
    #If there is a BoatingTest whose name and student match the values passed in, 
    #this method should update the status of that BoatingTest to 'passed'. 
    #If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. 
    #Either way, it should return the BoatingTest instance.
# Instructor#fail_student should take in a student instance and test name. Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.