require 'rails_helper'

describe 'when user visits /students/#/edit' do
  it 'can edit a student' do
    student = Student.create!(name: 'tom')

    visit edit_student_path(student)

    fill_in :student_name, with: 'jerry'
    click_on 'Update Student'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content('jerry')
  end
end
