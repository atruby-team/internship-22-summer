=begin

Exercise 1: Given a class Student has first_name, last_name and list_of_courses, define some method following:

Get and set: first_name, last_name.
full_name: show full name of student
add_course(course_name): Add new a course if course doesn’t exist.
remove_course(course_name): Remove a course if course exists.
courses: Show all of courses

Examples:

student = Student.new
student.first_name = "Kaylene" # "Kaylene"
student.last_name = "Johnson" # "Johnson"
student.first_name # "Kaylene"
student.full_name # "Kaylene Johnson"
student.add_course("Math") # "Math"
student.show # ["Math"]
student.add_course("Math") # false
student.remove_course("English") # false
student.add_course("English") # "English" 
student.remove_course("Math") # "Math"
student.add_course("Programming") # "Programming"
student.show # ["English", "Programming"]

=end

class Student
  attr_accessor :first_name 
  attr_accessor :last_name
  attr_reader :full_name

  def initialize
    @courses = []
  end
  
  def full_name
    first_name + " " + last_name
  end

  def add_course(course_name)
    if @courses.include?(course_name)
      false
    else
      @courses.push(course_name)
      course_name
    end
  end

  def show
    @courses
  end

  def remove_course(course_name)
    if @courses.include?(course_name)
      @courses.delete(course_name) 
    else
      false
    end
  end
end

student = Student.new
p student.first_name = "Kaylene" # "Kaylene"
p student.last_name = "Johnson" # "Johnson"
p student.first_name # "Kaylene"
p student.full_name # "Kaylene Johnson"
p student.add_course("Math") # "Math"
p student.show # ["Math"]
p student.add_course("Math") # false
p student.remove_course("English") # false
p student.add_course("English") # "English" 
p student.remove_course("Math") # "Math"
p student.add_course("Programming") # "Programming"
p student.show # ["English", "Programming"]
