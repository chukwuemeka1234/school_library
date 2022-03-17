require_relative 'person'

class Teacher < Person
  attr_reader :classroom

  def initialize(age, specialization, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def classroom=(studentsclass)
    @classroom = studentclass
    studentsclass.students.push(self) unless studentsclass.students.include?(self)
  end

  def can_use_services?
    true
  end
end

student = Teacher.new('A', 20)
puts student.age
