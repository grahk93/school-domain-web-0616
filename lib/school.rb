#require 'pry'
class School 
  attr_reader :name
  attr_reader :roster

  # def name=(name)
  #   @name = name
  # end

  # def name
  #   @name
  # end

  def initialize(name)
    @name = name 
    @roster = {}
  end

  def add_student(student,grade)
    #add a student to their grade in the roster
    #roster starts off empty #@roster = {}
    #keys will be grades, values will be arrays of students
    #if the key exists
    if @roster.keys.include?(grade)
       #add student items to that array
       @roster[grade] << student
    else
    #create the grade key and point it to a value of an empty array
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    #@roster.sort.to_h
    @roster.each_with_object({}) do |(grade_key, student_array),new_roster| #was sorting the pairs no sorting the arrays inside
    new_roster[grade_key] = student_array.sort
    end
  end
end
#Pry.start