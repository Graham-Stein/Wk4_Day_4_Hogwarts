require_relative('../models/student')

Student.delete_all

student1 = Student.new({
  "f_name" => "Harry",
  "l_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 15
  })

student2 = Student.new({
  "f_name" => "Draco",
  "l_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 16
  })

student3 = Student.new({
  "f_name" => "Ron",
  "l_name" => "Weasley",
  "house" => "Gryffindor",
  "age" => 15
  })

student4 = Student.new({
  "f_name" => "Hermione",
  "l_name" => "Granger",
  "house" => "Ravenclaw",
  "age" => 15
  })

student1.save()
student2.save()
student3.save()
student4.save()
