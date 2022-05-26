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
    @rentals = []
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

  def create_book
    print 'Title:'
    title = gets.chomp
    print 'Author:'
    author = gets.chomp

    if title.strip != '' && author.strip != ''
      book = Book.new(title, author)
      @books.push(book)
      puts 'Book created successfully'
    else
      puts 'Enter a valid title and author'
    end
  end

  def create_rental
    if @books.empty? && @people.empty?
      puts 'No books and people in the library'
    else
      puts 'Select a book:'
      @books.each_with_index do |book, index|
        puts "#{index + 1}) Title: \"#{book.title}\"|Author: by #{book.author}"
      end
      number = gets.chomp.to_i
      index = number - 1

      puts 'Type your ID:'
      @people.each { |person| puts "[#{person.class}] Name: #{person.name}|Age: #{person.age} | ID: #{person.id}" }
      id = gets.chomp.to_i
      individual = @people.find { |person| person.id == id }.first

      print 'Date:'
      date = gets.chomp
      @books[index].rentals.push(Rental.new(date, @books[index], individual))
      puts 'Rental created'
    end
  end

  def list_all_rentals
    puts 'No rentals in the library' if @rentals.empty?
    print 'To view your rentals, type your ID:'
    id = gets.chomp.to_i
    rental = @rentals.find { |rent| rent.person.id == id }
    if rental.empty?
      puts 'No rentals found'
    else
      puts 'Here are your rentals:'
      rental.each_with_index do |record, index|
        puts "#{index + 1}|Date: #{record.date}|
                  Borrowerred by: #{record.person.name}| Status: #{record.person.class} |
                  Book: #{record.book.title}\" by #{record.book.author}"
      end
    end
  end
end
