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

    def edit
        @house = House.find(params[:id])
    end

    def update
        @house = House.find(params[:id])

        if @house.update(house_params)
            redirect_to @house
        else
            render 'edit'
        end
    end

    def destroy
        @house = House.find(params[:id])
        @house.destroy

        redirect_to houses_path
    end

    def identify_user
        @user = current_user.email
    end

    def mine
        @houses = House.all
    end

    private
        def house_params

            params.require(:house).permit(:address, :available_date,
            :monthly_rent, :rooms_available, :current_occupants, :description, :owner)
        end
end
