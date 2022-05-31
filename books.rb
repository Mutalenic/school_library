require './book'

class Books
  attr_accessor :books

  def initialize
    @books = []
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
end
