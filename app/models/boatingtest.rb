class BoatingTest

  attr_reader :student, :boat_name, :status, :instructor

  @@all = []

  def initialize(student, boat_name, status, instructor)
    @student = student
    @boat_name = boat_name
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

end
