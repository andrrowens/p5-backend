class ListingsController < ApplicationController
    before_action :find_listing, only: [:show, :update, :destroy]

    # def show
    #     render json: @listing 
    # end

    def show
        if @listing.user == @user
        render json: @listing, status: :ok
        end 
    end

    # def show
    #     if listing.user == @user
    #     render json: listing, status: :ok
    #     end 
    # end

    # def show
    #     userlisting = @listing.listing
    #     render json: userlisting, status: :ok
    # end
    
    def index
        listings = Listing.all
        render json: listings, include: :user  
    end
    
    def create
        listing = @user.listings.create!(listing_params)
        render json: listing, status: :created
    end


    def update
        if @listing.user == @user
        @listing.update!(listing_params)
        render json: @listing, status: :accepted
        else 
            render json: "Unauthorized", status: :unauthorized
        end
    end

    def destroy
        if @listing.user == @user
            @listing.destroy 
            head :no_content
        else 
            render json: "Unauthorized", status: :unauthorized
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
