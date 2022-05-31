require_relative './nameable_class'

class Decorator < Nameable
  def initialize(nameable_object)
    super()
    @nameable_object = nameable_object
  end

  attr_accessor :nameable

  def correct_name
    @nameable_object.correct_name
  end
end
