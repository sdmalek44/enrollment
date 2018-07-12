require 'rails_helper'

describe 'when user visits any page' do
  it 'they can link to all students page' do
    student1 = Student.create!(name: 'tom')
    visit student_path(student1)

    click_on 'All Students'

    expect(current_path).to eq(students_path)
  end
  it 'can go to create a new student page' do
    visit students_path

    click_on 'Create A Student'

    expect(current_path).to eq(new_student_path)
  end
end
