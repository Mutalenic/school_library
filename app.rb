require_relative './book_class.rb'
require_relative './person_class.rb'

class App
    def initialize
        @books = []
        @people = []
    end

    def list_books
        if @books.empty?
            puts "No books in the library"
        else
        @books.each_with_index do |book, index|
            puts "#{index + 1}) Title: \"#{book.title}\"|Author: by #{book.author}"
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


