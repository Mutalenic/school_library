require_relative './app'

puts 'Welcome to the School library!'

def list_selection
  puts "Please choose from the following options:
       1.List all books
       2.List all people
       3.Create person account
        4.Create a book
        5. Create a rental
        6. List all rentals for a given person ID
        7. Exit"
    gets.chomp.to_i
  end

  def main
    app = App.new
    app.start
  end

  def selection
    case


class Main
  
end

def main
  App.new
end

Main
