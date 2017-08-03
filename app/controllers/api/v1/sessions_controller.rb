class Api::V1::SessionsController < ApplicationController

  def create
    user = User.where(email: params[:email]).first
    print(user)
    if user && user.valid_password?(params[:password])
      render json: user.as_json(only: [:id, :email]), status: :ok
    else
      head(:unauthorized)
    end
  end

end
