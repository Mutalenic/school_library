require_relative './nameable_class'
require_relative './rental_class'
require 'date'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1...1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    @date = DateTime.now.to_s
  end

  def can_use_services?
    of_age || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(name)
    @rentals.push(Rental.new(name))
  end

  private

  def of_age?
    @age >= 18
  end
end
