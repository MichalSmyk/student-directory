def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    #step8 ex 9 
    # if students.count <= 1
    # puts "Now we have #{students.count} student"
    #else
    puts "Now we have #{students.count} students"
    #end
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end
  
  def print_header
    puts "The students of Villains Academy"
    puts "-------------"
  end
  # step 8 exercie 1
  # def print(students)
  #  students.each.with_index(1) do |student, index|
  #   puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)"
  # end
  #end

  #step8 ex 2
  #def print(students)
  #  students.select {|name| name.start_with?('a')}
  #end
  
  #step8 ex 3
  #def print(students)
  #  students.each do |student|
  #    if student.length < 12
  #      student
  #    end
  #  end
  #end

 

  def print(students)
    students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
  
  def print_footer(students)
    puts "Overall, we have #{students.count} great students"
  end
  
  students = input_students
  #nothing happens until we call the methods
  print_header
  #step8 ex6
  # print(students).center(5)
  print(students)
  print_footer(students)