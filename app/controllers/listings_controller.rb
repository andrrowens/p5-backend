class ListingsController < ApplicationController
    before_action :find_listing, only: [:show, :update, :destroy]

    def show
        render json: @listing 
    end
    
    def index
        listings = Listing.all
        render json: listings 
    end
    
    def create
        listing = @user.listings.create!(listing_params)
        render json: listing, status: :created
    end


    def update
        if @listing.user == @user
        @listing.update!(listing_params)
        render json: @listing, status: :accepted
        end
    end

    def destroy
        if @listing.user == @user
            @listing.destroy 
            head :no_content 
        end
    end


    private

    def find_listing 
        @listing = Listing.find(params[:id])
    end
    
    def listing_params 
        params.permit(:title, :plant_name, :description, :image, :city, :state, :zipcode, :plant_id, :user_id)
    end


end
