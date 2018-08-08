require 'rails_helper'

RSpec.describe PeopleController, type: :controller do
  let(:valid_attributes) {
    { first_name: 'Jane', last_name: 'Doe' }
  }

  let(:invalid_attributes) {
    { first_name: nil, last_name: nil }
  }

  # let(:new_attributes) {
  #   { first_name: 'NewFirstName', last_name: 'NewLastName' }
  # }


  # it "updates the requested person" do
  # person = Person.create! valid_attributes
  # put :update, {:id => person.to_param, :person => new_attributes}, valid_session
  # person.reload
  # expect(person.first_name).to eq('NewFirstName')
  # expect(person.last_name).to eq('NewLastName')
  # end
end
