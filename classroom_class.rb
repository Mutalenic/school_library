class Classroom
    attr_accessor :label
    attr_reader :students

    def initialize(lable)
        @label = label
        @students = []
    end
end