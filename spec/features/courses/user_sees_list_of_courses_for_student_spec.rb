require 'rails_helper'

describe 'when user visits /student/# page' do
  it 'can see a list of all the courses for student' do
    student = Student.create!(name: 'tom')
    course1 = student.courses.create!(name: 'math')
    course2 = student.courses.create!(name: 'gym')

    visit student_path(student)

    expect(page).to have_content(course1.name)
    expect(page).to have_content(course2.name)
  end
end
