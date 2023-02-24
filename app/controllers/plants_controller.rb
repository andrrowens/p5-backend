class PlantsController < ApplicationController

    def index 
        plants = Plant.all 
        render json: plants
    end

    def show
        plant = plant.find(params[:id])
        render json: plant, status: :ok 
    end
    
 
    def create
        @plant = Plant.create(common_name: params[:common_name], scientific_name: params[:scientific_name], cycle: params[:cycle], watering: params[:watering], sunlight: params[:sunlight], image: params[:image])
        if @plant 
            render json: @plant, status: :created
        end
    end

    def update
        plant = Plant.find(user_id: session[:user_id])
        render json: plant, status: :accepted
    end

    def destroy
        plant = Plant.find(params[:id])
        plant.destroy 
        head :no_content 
    end

end
