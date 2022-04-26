class Student
  attr_accessor :first_name
  attr_accessor :last_name
  def initialize
    @course=[]
  end

  def full_name
    @first_name + " " + @last_name
  end

  def add_course(course)
    return false if @course.include? course
    @course.push(course)
    course
  end

  def show
    @course
  end

  def remove_course(course)
    return false if !@course.include? course
    @course.delete(course)
    course
  end
end

student = Student.new
p student.first_name = "Kaylene"
p student.last_name = "Johnson"
p student.first_name
p student.full_name
p student.add_course("Math")
p student.show
p student.add_course("Math")
p student.remove_course("English")
p student.add_course("English")
p student.remove_course("Math")
p student.add_course("Programming")
p student.show
