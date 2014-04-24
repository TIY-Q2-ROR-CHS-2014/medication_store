class MedicationsController < ApplicationController
  before_action :find_pharmacy

  def new
    @medication = Medication.new
  end

  def create
    @medication = @pharmacy.medications.create medication_params
  end

private
  def find_pharmacy
    @pharmacy = Pharmacy.find params[:pharmacy_id]
  end

  def medication_params
    params.require(:medication).permit(:name)
  end
end
