class AddressesController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
  end

  def create
    @student = Student.find(params[:student_id])
    @student.addresses.create(address_params)
    redirect_to student_path(@student)
  end

  private

  def address_params
    params.require(:address).permit(:description, :street, :city, :zip_code, :state, :student_id)
  end
end
