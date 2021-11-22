class StudentsController < ApplicationController
    
    def index
        students = Student.all 
        render json: students
    end

    def grades 
        sortedStudents = Student.all.sort { |a,b| b.grade <=> a.grade }
        render json: sortedStudents
    end
end
