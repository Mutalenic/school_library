require_relative './book_class'
require_relative './person_class'
require_relative './student_class'
require_relative './teacher_class'
require_relative './classroom_class'
require_relative './people_class'
require_relative 'rent_book'
class App
  def initialize
    @books = []
    @people = Peoplemodule.new
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

  
  
end
