# frozen_string_literal: true

class ClientsController < ApplicationController
  def create
    @client = Client.create(client_params)
    if @client.valid?
      render json: { client: @client }
    else
      render json: { errors: @client.errors.messages }
    end
  end

  def login
    client = Client.find_by client_params
    return render json: { message: 'Login done', client: client } if client

    render json: { error: 'Error, wrong login or password' }
  end

  def show
    client = Client.find(params[:id])
    if client
    return render json: { client: client }, status: :ok
     else
      return render json: { message: 'Error, no such client found' }, status: :not_found
    end
  end

  def update
    client = Client.find(params[:id])
    if client
      updated_params = client.calculate_bonus(client, params)
      client.update(updated_params)
      return render json: { client: client, message: 'reoslve' }, status: :ok
    end
    render json: { message: 'Bad request options, reload page and try again.' }, status: :bad_request
  end

  private def client_params
    params.permit(:email, :password, :address, :first_name, :last_name, :nick_name, :balance, :bonus)
  end
end
