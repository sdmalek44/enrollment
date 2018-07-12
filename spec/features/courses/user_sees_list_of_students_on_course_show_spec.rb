require 'rails_helper'

describe 'user visits /courses/#' do
  it 'can see all students in that course' do
    course = Course.create!(name: 'math')
    student1 = course.students.create!(name: 'tom')
    student2 = course.students.create!(name: 'bill')

    visit course_path(course)

    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
  end
end
