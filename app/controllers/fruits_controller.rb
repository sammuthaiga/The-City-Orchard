class FruitsController < ApplicationController
    def index
        fruits = Fruit.all
        render json: fruits
    end

    def show
        fruit = find_fruit
        if fruit
          render json: fruit
        else
          render json: { error: "Fruit not found" }, status: :not_found
        end
      end

      def create
        fruit = Fruit.create(fruit_params)
         if fruit.valid?
           render json: fruit, status: :created
         else
           render json: { errors:fruit.errors.full_messages }, status: :unprocessable_entity
         end
       end

      def update
       fruit = find_fruit
        if fruit
          fruit.update(fruit_params)
          render json: fruit, status: :accepted
        else
          render json: { error: "Fruit not found" }, status: :not_found
        end
      end

      def destroy
        fruit = find_fruit
        if fruit
          fruit.destroy
          head :no_content
        else
          render json: { error: "Fruit not found" }, status: :not_found
        end
      end

    
      private
      # all methods below here are private
      def find_fruit
        Fruit.find_by(id: params[:id])
      end
    
      def fruit_params
        params.permit(:name, :image, :price, :availability, :farmer_id, :client_id)
      end
    
end
