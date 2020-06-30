class Student

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_boating_test(boat_name, boat_status, instructor)
    BoatingTest.new(self, boat_name, boat_status, instructor)
  end

  def self.find_student(name)
    @@all.select do |element|
      element.name == name
    end
  end

  def grade_percentage
    array = BoatingTest.all.map do |element|
      element.status == 'passed'
    end
    passed = array.select {|item| item == true}
    passed = passed.length
    total_tests = array.length
    grade = passed.to_f/total_tests
    grade
  end


  def self.all
    @@all
  end


end

