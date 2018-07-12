require 'rails_helper'

describe Student, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
  end
  describe 'relationships' do
    it {should have_many :addresses}
  end
end
