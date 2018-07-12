require 'rails_helper'

describe 'when user visits /students' do
  it 'can delete a student' do
    student1 = Student.create!(name: 'tom')
    student2 = Student.create!(name: 'brad')

    visit students_path

    click_on "Delete #{student1.name}"

    expect(current_path).to eq(students_path)
    expect(page).to have_content(student2.name)
    expect(current_path).to_not have_content(student1.name)

  end
end
