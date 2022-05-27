require_relative 'book_class'
require_relative 'person_class'

class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
  end
end
