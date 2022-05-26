require_relative './app'

class main
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
        @content.each {|index, string| puts "#{index} - #{string}" }
    end
end