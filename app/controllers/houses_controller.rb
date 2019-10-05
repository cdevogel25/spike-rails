class HousesController < ApplicationController

    def index
        @houses = House.all
    end

    def show
        @house = House.find(params[:id])
    end

    def new
        @house = House.new
    end

    def create
        @house = House.new(house_params)

        if @house.save
            redirect_to @house
        else
            render 'new'
        end
    end

    private
        def house_params
            params.require(:house).permit(:address, :available_date, :monthly_rent, :rooms_available, :current_occupants, :description)
        end
end
