class Student
  def initialize
    @course=[]
  end

  def first_name=(first_name)
    @first_name=first_name
    p @first_name
  end

  def first_name
    p @first_name
  end

  def last_name=(last_name)
    @last_name=last_name
    p @last_name
  end

  def last_name
    p @last_name
  end

  def full_name
   p @first_name + " " + @last_name
  end

  def add_course(args1)
    @args1 = args1
    if @course.include?(@args1) == false
      @course.push(@args1)
      p @args1
    else
      p false
    end
  end

  def show
    p @course
  end

  def remove_course(args2)
    @args2=args2
    if @course.include?(@args2) == false
      p false
    else
      @course.delete(@args2)
      p @args2
    end
  end
end
student = Student.new
student.first_name = "Kaylene"
student.last_name = "Johnson"
student.first_name
student.full_name
student.add_course("Math")
student.show
student.add_course("Math")
student.remove_course("English")
student.add_course("English")
student.remove_course("Math")
student.add_course("Programming")
student.show
