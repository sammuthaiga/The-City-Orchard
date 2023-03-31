class ClientsController < ApplicationController
    wrap_parameters format: []

    def index
        clients = Client.all
        render json: clients
    end

    def show
        client = find_client
        if client
          render json: client
        else
          render json: { error: "Client not found" }, status: :not_found
        end
      end

      def create
        client = Client.create(client_params)
         if client.valid?
           render json:client, status: :created
         else
           render json: { errors:client.errors.full_messages }, status: :unprocessable_entity
         end
       end

      def update
       client = Client.find_by(id: params[:id])
        if client
         client.update(client_params)
          render json:client, status: :accepted
        else
          render json: { error: "Client not found" }, status: :not_found
        end
      end


      def destroy
        client = find_client
        if client
          client.destroy
          head :no_content
        else
          render json: { error: "Client not found" }, status: :not_found
        end
      end

    
      private
      # all methods below here are private
      def find_client
        Client.find_by(id: params[:id])
      end
    
      def client_params
        params.permit(:name, :image, :email, :phonenumber, :location)
      end
end
