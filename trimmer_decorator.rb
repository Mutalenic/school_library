require_relative './decorator'

class TrimmerDecorator < Decorator
    def correct_name
        @nameable_object.correct_name[0...10]
    end
end