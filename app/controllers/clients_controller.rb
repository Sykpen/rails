# frozen_string_literal: true

class ClientsController < ApplicationController
  def index
    render json: { clients: Client.all }
  end

  def create
    @client = Client.create(client_params)
    if @client.valid?
      render json: { new_client: @client }
    else
      render json: { errors: @client.errors.messages }
    end
  end

  def login
    if Client.find_by client_params
      @client = Client.find_by client_params
      return render json: { response: 'Login done', client_data: @client }
    end
    render json: { error: 'Error, wrong login or password' }
  end

  private def client_params
    params.permit(:email, :password, :address, :name, :nick_name)
  end
end
