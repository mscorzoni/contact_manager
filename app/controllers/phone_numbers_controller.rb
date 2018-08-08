class PhoneNumbersController < ApplicationController
  before_action :set_phone_number, only: [:show]

  def index
    @phone_numbers = PhoneNumber.all
  end

  def show
  end

  def new
    @phone_number = PhoneNumber.new(person_id: params[:person_id])
  end



  def create
    @phone_number = PhoneNumber.new(phone_number_params)
    if @phone_number.save
      redirect_to @phone_number.person
    else
      render :new
    end
  end


  private

  def set_phone_number
    @phone_number = PhoneNumber.find(params[i:d])
  end

  def phone_number_params
    params.require(:phone_number).permit(:number, :person_id)
  end
end
