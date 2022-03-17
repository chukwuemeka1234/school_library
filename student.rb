require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def classroom=(studentsclass)
    @classroom = studentsclass
    studentsclass.students.push(self) unless studentsclass.students.include?(self)
  end

  def play_hooky
    puts "¯\(ツ)/¯"
  end
end

student = Student.new(20, 'victor')
puts student.name
