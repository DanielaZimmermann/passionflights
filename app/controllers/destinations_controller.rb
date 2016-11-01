class DestinationsController < ApplicationController
	 before_action :set_destination, only: [:show, :edit, :update, :destroy]

	def index
		@destinations = Destination.all
	end

	def show
	end

	def new
	end

	def create
	end

  private
   # Use callbacks to share common setup or constraints between actions.
  def set_destination
    @destination = Destination.find(params[:id])
  end

	# Never trust parameters from the scary internet, only allow the white list through.
  def destination_params
    params.require(:destination).permit(:iata_code, :city, :continent, :area, :season_months)
  end
	
end
