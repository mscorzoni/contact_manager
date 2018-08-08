require 'rails_helper'

RSpec.describe PhoneNumbersController, type: :controller do
  let(:valid_attributes) do
    {
      number: "MyString",
      person_id: 1
    }
 end

  let(:invalid_attributes) do
    {
      number: nil,
      person_id: nil
    }
  end
end
