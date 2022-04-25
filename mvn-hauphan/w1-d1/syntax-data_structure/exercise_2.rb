=begin

Bài tập 2: The Institute maintains a list of lecturer names and areas of interest, for example:

Paul Barry => Programming, Networking, Security, Open Source, Frameworks.
Chris Meudec => Testing, Safety Systems, Formal Systems, Programming Languages.
Nigel Whyte => Graphics, Imaging, Programming, Sign Language, Trees.
Austin Kinsella => Networks, WANs, Programming, Macintosh, Digital Photography.
Gerry Moloney ­=> Placement, Employment, Emerging Systems, Web Development.

Write a Ruby data structure to hold this data.
Show list areas of interest of the first and third lecturers.
Remove the last lecturer.
Change lecturer name from Austin Kinsella to Howard Williams

=end 

data = {"Paul Barry" => ["Programming", "Networking", "Security", "Open Source", "Frameworks"],
        "Chris Meudec" => ["Testing", "Safety Systems", "Formal Systems", "Programming Languages"],
        "Nigel Whyte" => ["Graphics", "Imaging", "Programming", "Sign Language", "Trees"],
        "Austin Kinsella" => ["Networks", "WANs", "Programming", "Macintosh", "Digital Photography"],
        "Gerry Moloney" => ["Placement", "Employment", "Emerging Systems", "Web Development"]}

def show_list_areas_of_interest(data, name)
  p data[name]
end

def remove_lecturer(data, name)
  data.delete(name)
  p data
end

def change_lecturer_name(data, name, new_name)
  data[new_name] = data.delete(name) if data.key?(name)
  p data
end

show_list_areas_of_interest(data, "Paul Barry")
show_list_areas_of_interest(data, "Nigel Whyte")
remove_lecturer(data, "Gerry Moloney")
change_lecturer_name(data, "Austin Kinsella", "Howard Williams")
