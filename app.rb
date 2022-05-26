require_relative './book_class.rb'
require_relative './person_class.rb'
require_relative './student_class.rb'
require_relative './teacher_class.rb'
require_relative './classroom_class.rb'
require_relative './rental_class.rb'

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
            puts "Invalid input"
        end
        puts "Person created"
    end

    def create_student(name, age, grade)
        print 'Parent permision?[Y/N]:'
        option = gets.chomp.downcase
        if option == 'y'
            student = Student.new(age, name, parent_pernission: true)
        else
            student = Student.new(age, name, parent_permission: false)
            else
                puts "Invalid input"
                return
            end
            @people.push(student)
            puts "Student created"
        end
    end
    
end


