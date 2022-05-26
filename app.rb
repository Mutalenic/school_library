require_relative './book_class'
require_relative './person_class'
require_relative './student_class'
require_relative './teacher_class'
require_relative './classroom_class'
require_relative './rental_class'

class App
  def initialize
    @books = []
    @people = []
  end

  def list_books
    if @books.empty?
      puts 'No books in the library'
    else
      @books.each_with_index do |book, index|
        puts "#{index + 1}) Title: \"#{book.title}\"|Author: by #{book.author}"
      end
    end
  end

  def list_people
    if @people.empty?
      puts 'No people added'
    else
      @people.each_with_index do |person, index|
        puts "#{index + 1}) [#{person.class.name}] Name: #{person.name}|Age: #{person.age} |ID: #{person.id}"
      end
    end
  end

  def create_person
    print 'Do you want to create a student(1) or a teacher (2)?[Input a number]:'
    option = gets.chomp
    print 'Name:'
    name = gets.chomp
    print 'Age:'
    age = gets.chomp.to_i
    case option
    when 1
      print 'Class:'
      person = gets.chomp
      create_student(name, age, person)
    when 2
      print 'specialization:'
      grade = gets.chomp
      create_teacher(name, age, grade)
    else
      puts 'Invalid input'
    end
    puts 'Person created'
  end

  def create_student(name, age, _grade)
    print 'Parent permision?[Y/N]:'
    option = gets.chomp.downcase
    case option
    when 'y'
      student = Student.new(age, name, parent_pernission: true)
    when 'n'
      student = Student.new(age, name, parent_permission: false)
    else
      puts 'Invalid input'
      return
    end
    @people.push(student)
    puts "Student created ID: #{student.id}"
  end

  def create_teacher(name, age, specialization)
    teacher = Teacher.new(age, name, specialization)
    @people.push(teacher)
    puts "Teacher created ID: #{teacher.id}"
  end
end
