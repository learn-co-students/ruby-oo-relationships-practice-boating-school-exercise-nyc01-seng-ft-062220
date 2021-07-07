require "pry"

class Instructor

    attr_reader :name
    @@all = []


    def initialize (name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student (student, test)
      new_result = BoatingTest.all.find {|t| t.student == student && t.name == test} 
      
      if new_result == nil
        new_result = BoatingTest.new(student, test, "passed", self)
      else
        new_result.status = "passed"
      end
      new_result
    end

    def fail_student (student, test)
        new_result = BoatingTest.all.find {|t| t.student == student && t.name == test} 
        
        if new_result == nil
          new_result = BoatingTest.new(student, test, "failed", self)
        else
          new_result.status = "failed"
        end
        new_result
      end

end
