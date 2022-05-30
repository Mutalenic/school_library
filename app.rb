require_relative './book_class'
require_relative './person_class'
require_relative './student_class'
require_relative './teacher_class'
require_relative './classroom_class'
require_relative './people_class'
require_relative 'rent_book'

class App
  def initialize
    @books = Books.new
    @people = Peoplemodule.new
    @rentals = Rent_Book.new(@books, @people.people)
  end

  def self.home_page
    puts 'Please enter a number to select an option:'

    @content = {
      '1' => 'List all books',
      '2' => 'List all people',
      '3' => 'Create a person (student or teacher)',
      '4' => 'Create a book',
      '5' => 'Create a rental',
      '6' => 'List all rentals for a given person id',
      '7' => 'Exit'
    }
    @content.each { |index, string| puts "#{index} - #{string}" }

    Integer(gets.chomp)
  end

  app = App.new

  loop do
    case home_page
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      app.create_person
    when 4
      app.create_book
    when 5
      app.create_rental
    when 6
      app.list_all_rentals
    when 7
      puts 'Goodbye!'
      exit
    else
      puts 'Invalid input'
    end
  end  
  
end
