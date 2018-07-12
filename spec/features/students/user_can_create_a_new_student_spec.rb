require 'rails_helper'

describe 'when user visits /students/new' do
  it 'can create a new student' do

    visit new_student_path

    fill_in :student_name, with: 'jerry'
    click_on 'Create Student'

    expect(current_path).to eq(student_path(1))
    expect(page).to have_content('jerry')
  end
end
