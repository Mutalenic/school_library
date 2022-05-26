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


