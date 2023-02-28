class SessionsController < ApplicationController
    def create
        user = User.create(username: params[:username])
        session[:user_id] = user.id
        render json: user
      end

end
