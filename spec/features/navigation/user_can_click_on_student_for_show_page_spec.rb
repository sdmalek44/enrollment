require 'rails_helper'
describe 'user visits /students' do
  it 'can go to create a new student page' do
    student = Student.create!(name: 'tom')

    visit students_path
    click_on student.name

    expect(current_path).to eq(student_path(student))
  end
end
