require 'rails_helper'

describe 'user visits /student/#' do
  it 'can see all addresses associated with student' do
    student = Student.create!(name: 'tom')
    add1 = student.addresses.create!(street: 'bald', city: 'compton', state: 'il', zip_code: 34, description: 'dumb')
    add2 = student.addresses.create!(street: 'it', city: 'chicago', state: 'co', zip_code: 28, description: 'hey')

    visit student_path(student)

    expect(page).to have_content(add1.street)
    expect(page).to have_content(add1.city)
    expect(page).to have_content(add1.state)
    expect(page).to have_content(add1.zip_code)
    expect(page).to have_content(add1.description)
    expect(page).to have_content(add2.street)
    expect(page).to have_content(add2.city)
    expect(page).to have_content(add2.state)
    expect(page).to have_content(add2.zip_code)
    expect(page).to have_content(add2.description)
  end
end
