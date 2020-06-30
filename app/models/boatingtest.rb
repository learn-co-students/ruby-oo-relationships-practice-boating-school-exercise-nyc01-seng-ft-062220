# this is the joiner

class BoatingTest

    attr_accessor :test_name, :test_status, :stundent_inst, :instr_inst

    @@all = []

    def initialize(stundent_inst, test_name, test_status, instr_inst)
        @stundent_inst = stundent_inst
        @instr_name = instr_inst
        @test_status = test_status
        @test_name = test_name
        @@all << self
        
    end

    def self.all
        @@all
    end


end
