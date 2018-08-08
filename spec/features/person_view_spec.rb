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

  it 'has a link to add a new phone number' do
    expect(page).to have_link('Add phone number', href: new_phone_number_path(person_id: person.id))
  end

  it 'adds a new phone number' do
    page.click_link('Add phone number')
    page.fill_in('Number', with: '555555555')
    page.click_button('Create phone number')
    expect(current_path).to eq(person_path(person.id))
    expect(page).to have_content('555555555')
  end
end