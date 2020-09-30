# frozen_string_literal: true

class AdminsController < ApplicationController
  def index
    render json: { clients: Admin.all }
  end

  def login_admin
    return render json: {response: 'Admin here, watchout'} if Admin.find_by admin_params

    render json: {response: 'Error. Are you trying to fool me ? You are not an admin !'}
  end

  private def admin_params
    params.permit(:nickName, :firstName, :lastName, :password)
  end
end
