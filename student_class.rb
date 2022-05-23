require_relative'./person_class'
class Student < Person
def initialize(name = 'Unknown', age, parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
end
end