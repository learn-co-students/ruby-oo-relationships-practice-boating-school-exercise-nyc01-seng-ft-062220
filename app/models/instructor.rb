class Instructor
    @@all=[]
    attr_reader :name
def initialize(name)
    @name=name
    @@all << self 
end
def self.all 
@@all 
end

def pass_student(student, test_name)
    past_test=BoatingTest.all.find {|test| test.student == student && test.test_name == test_name}
          if past_test
            past_test.test_status = "passed"
            past_test
        else 
          BoatingTest.new(student, test_name, "passed", self)
        end
end 

def fail_student(student, test_name)
    fail_test=BoatingTest.all.find {|test| test.student == student && test.test_name == test_name}
        if fail_test
            fail_test.test_status = "fail"
            fail_test
        else 
            BoatingTest.new(student, test_name, "fail", self)
        end

end 
end