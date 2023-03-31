class FarmersController < ApplicationController
    wrap_parameters format: []


    def index
        farmers = Farmer.all
        render json: farmers
    end

    def show
       farmer = find_farmer
        if farmer
          render json:farmer
        else
          render json: { error: "Farmer not found" }, status: :not_found
        end
      end

      def create
       farmer = Farmer.create(farmer_params)
        if farmer.valid?
          render json:farmer, status: :created
        else
          render json: { errors:farmer.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
       farmer = find_farmer
        if farmer
         farmer.update(farmer_params)
          render json:farmer, status: :accepted
        else
          render json: { error: "Farmer not found" }, status: :not_found
        end
      end


      def destroy
       farmer = find_farmer
        if farmer
         farmer.destroy
          head :no_content
        else
          render json: { error: "Farmer not found" }, status: :not_found
        end
      end

    
      private
      # all methods below here are private
      def find_farmer
        Farmer.find_by(id: params[:id])
      end
    
      def farmer_params
        params.permit(:name, :image, :email, :phonenumber, :location, :fruit_id)
      end
    
end


