require_relative './nameable_class'

class Decorator < Nameable
  def initialize(nameable_object)
    @nameable_object = nameable_object
    super()
  end

  def correct_name
    @nameable_object.correct_name
  end
end
