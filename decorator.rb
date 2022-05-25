require_relative './nameable_class'

class Decorator < Nameable
  def initialize(nameable_object)
    super()
    @nameable_object = nameable_object
  end

  def correct_name
    @nameable_object.correct_name
  end
end
