require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= [] #Ask what this code is doing
    roster[grade] << student_name
    # binding.pry
  end

  def grade(student_grade)
    roster[student_grade]
  end

  # this method should arrange the students in each grade by alphabetical order
  def sort #Im confuse ask for clarification
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
      # binding.pry
    end
    sorted
  end
end
