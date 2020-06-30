# this is the joiner

class BoatingTest

    attr_accessor :test_name, :test_status, :student_inst, :instr_inst

    @@all = []

    def initialize(student_inst, test_name, test_status, instr_inst)
        @student_inst = student_inst
        @instr_inst = instr_inst
        @test_status = test_status
        @test_name = test_name
        @@all << self
        
    end

    def self.all
        @@all
    end


end
