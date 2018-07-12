require 'rails_helper'

describe 'user visits /students/#' do
  it 'can see an individual student' do
    student = Student.create!(name: 'tom')

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
