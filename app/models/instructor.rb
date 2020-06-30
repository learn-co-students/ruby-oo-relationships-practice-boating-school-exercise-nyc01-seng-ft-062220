class Instructor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def pass_student(student, test_name)
    if BoatingTest.all.include? student && test_name
      puts "Test Found"
      test_name.status == "passed"
      return 'Test updated to passed'
    else
      puts "Creating test"
      BoatingTest.new(student, test_name, "Failed", self)
      return "test created and failed"
    end
  end

  def self.all
    @@all
  end

end

