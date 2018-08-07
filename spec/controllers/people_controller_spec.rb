require 'rails_helper'

RSpec.describe PeopleController, type: :controller do
  let(:valid_attributes) {
    { first_name: 'Jane', last_name: 'Doe' }
  }

  let(:invalid_attributes) {
    { first_name: nil, last_name: nil }
  }
end
