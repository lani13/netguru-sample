class StudentsController < ApplicationController
  expose(:students) { Student.all }
  expose(:student, attributes: :student_params)
  expose(:student_subject_items) { student.subject_items }

  def create
    params.permit!
    student = Student.new(params[:student])

    if student.save
      redirect_to student_path(student), notice: I18n.t('shared.created', resource: 'Student')
    else
      render :new
    end
  end

  def update
    params.permit!
    student = Student.find(params[:id])

    if student.update(params[:student])
      redirect_to student_path(student), notice: I18n.t('shared.updated', resource: 'Student')
    else
      render :edit
    end
  end

  def destroy
    student.destroy
    redirect_to students_path, notice: I18n.t('shared.deleted', resource: 'Student')
  end
end
