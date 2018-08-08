require 'rails_helper'

describe 'person view', type: :feature do
  let(:person) do
    Person.create(
                  first_name: 'John',
                  last_name: 'Doe'
                  )
  end

  before(:each) do
    person.phone_numbers.create(number: "44444444")
    person.phone_numbers.create(number: "66666666")
    visit person_path(person)
  end

  it 'shows the phone numbers' do
    person.phone_numbers. each do |phone|
      expect(page).to have_content(phone.number)
    end
  end
end