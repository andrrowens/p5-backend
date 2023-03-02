class PlantsController < ApplicationController
# require 'dotenv'
# require 'json'
# Dotenv.load

# require 'rest-client'
 
#     def plants
#             @response =  RestClient.get "https://perenual.com/api/species-list?page=1",
#              {content_type: :json, accept: :json, "user-key": ENV["API_KEY"]}
          
#             @plant_info = JSON.parse(@response.body)["plants"][0]
             
#             if @plant_info
#               @plants = RestClient.get "https://perenual.com/api/species-list?page=1", 
#               {content_type: :json, accept: :json, "user-key": ENV["API_KEY"]}
         
#               @plant_info["plants"] = JSON.parse(@plants.body)["plants"]
         
#               render json: @plants
#             else
#               render json: {message: "Plant Not Found", error: 404}
#             end
#             end
# end

    # def get_plants 
    #     url = "https://perenual.com/api/species-list?page=1&key=sk-tz5C63f677fa6cac6101"
    #     plants_response = RestClient.get(url) 
    #     render json: plants_response, status: :ok
    # end


    def index 
        plants = Plant.all 
        render json: plants, status: :ok
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


