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

  describe "POST Create" do
    describe "with valid params" do
      let(:alice) do
        Person.create(
                      first_name: 'Alice',
                      last_name: 'Smith'
                      )
      end

      let(:valid_attributes) do
        { number: '55555555', person_id: alice.id}
      end
      xit "redirects to the phone's number person" do
        post :create, { phone_number:  valid_attributes }
        expect(response).to redirect_to(alice)
      end
    end
  end
end
