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

  
  def create_rental
    if @books.empty? && @people.empty?
      puts 'No books and people in the library'
    else
      puts 'Select a book from the following list by number:'
      @books.each_with_index do |book, index|
        puts "#{index + 1}) Title: \"#{book.title}\"|Author: by #{book.author}"
      end
      number = gets.chomp.to_i
      index = number - 1

      puts 'Select a person from the following list by number (not id):'
      @people.each_with_index do |person, i|
        puts "#{i + 1}) [#{person.class.name}] Name: #{person.name}|Age: #{person.age} |ID: #{person.id}"
      end
      num = gets.chomp.to_i
      id = num - 1
      print 'Enter the date [dd/mm/yyyy]:'
      date = gets.chomp
      rental = Rental.new(date, @people[id], @books[index])
      @rentals.push(rental)
      puts 'Rental created successfully'
    end
  end

  def list_all_rentals
    if @rentals.empty?
      puts 'No rentals in the library'
      return
    end
    print 'To view your rentals, type your ID:'
    id = gets.chomp.to_i

    rented = @rentals.filter { |rental| rental.person.id == id }
    if rented.empty?
      puts 'No rentals found'
    else
      rented.each do |rental|
        puts
        puts "Rental date: #{rental.date}|Book: #{rental.book.title}|Person: #{rental.person.name}"
      end
    end
  end
end
