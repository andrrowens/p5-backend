class PlantsController < ApplicationController
    before_action :find_plant, only: [:show, :update, :destroy]

    def index 
        plants = Plant.all 
        render json: plants, status: :ok
    end

    def show
        plant = plant.find(params[:id])
        render json: plant, status: :ok 
    end
    
 
    # def create
    #     @plant = Plant.create(common_name: params[:common_name], scientific_name: params[:scientific_name], cycle: params[:cycle], watering: params[:watering], sunlight: params[:sunlight], image: params[:image])
    #     if @plant 
    #         render json: @plant, status: :created
    #     end
    # end

    def create
        @plant = Plant.create(plant_params)
        if @plant 
            render json: @plant, status: :created
        end
    end

    def update
        plant = Plant.find(params[:id])
        plant.update!(plant_params)
        render json: plant, status: :accepted
    end

    def update
        if @plant.user == @user
        @plant.update!(plant_params)
        render json: @plant, status: :accepted
        else 
            render json: "Unauthorized", status: :unauthorized
        end
    end

    # def destroy
    #     plant = Plant.find(params[:id])
    #     plant.destroy 
    #     head :no_content 
    # end

    def destroy
        if @plant.user == @user
            @plant.destroy 
            head :no_content
        else 
            render json: "Unauthorized", status: :unauthorized
        end
    end

    private 

    def plant_params 
        params.permit(:name, :watering, :sunlight, :environment, :notes, :image)
    end

    def find_plant 
        @plant = Plant.find(params[:id])
    end

end


