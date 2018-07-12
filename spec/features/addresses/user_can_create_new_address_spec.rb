require 'rails_helper'

describe 'user visits /students/#/addresses/new' do
  it 'can create a new address for student' do
    student = Student.create!(name: 'tom')

    visit new_student_address_path(student)

    fill_in :address_description, with: 'nnnn'
    fill_in :address_state, with: 'ssss'
    fill_in :address_street, with: 'bbbb'
    fill_in :address_city, with: 'dddd'
    fill_in :address_zip_code, with: 5
    click_on 'Create Address'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content('nnnn')
    expect(page).to have_content('ssss')
    expect(page).to have_content('bbbb')
    expect(page).to have_content('dddd')
    expect(page).to have_content(5)
  end
end
