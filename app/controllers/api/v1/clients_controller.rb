module Api
  module V1
    class ClientsController < ApplicationController
      before_action :clients_only, only: %i[create]

      before_action :clients_denied, only: %i[index]

      def index 
      end

      def create
        client = current_user.build_client(clients_params)
        if client.valid?
          client.save
          current_user.update(is_client: true)
          response = { message: 'Client Created Successfuly!' }
          return render json: response, status: :created
        end
        response = { message: client.errors.full_messages }
        render json: response, status: :unprocessable_entity
      end

      protected

      def clients_only
        if current_user.privilage != 'client' || current_user.is_client
          response = { message: 'Your user cannot create a client' }
          render json: response, status: :unprocessable_entity
        end
      end

      def clients_denied
        if current_user.privilage == 'client'
          response = { message: 'Client users don\'t have access' }
          render json: response, status: :unprocessable_entity
        end
      end

      def clients_params
        params.permit(
          :first_name,
          :last_name,
          :phone,
          :billing_address,
          :billing_city,
          :billing_state,
          :billing_zip_code
        )
      end
    end
  end
end
