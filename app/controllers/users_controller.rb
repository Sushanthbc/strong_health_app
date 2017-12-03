class UsersController < ApplicationController
  def authentication
    print params[:username]
    print params[:password]
    #binding.pry
    user = User.find_by!(username: params[:username])
    if user.authenticate(params[:password])
      session['user_id'] = user.id
      render json: {
        status: :ok,
        data: user.as_json(except: %i[id password_digest])
      }
    else
      render json: {
        status: 401,
        data: 'Authorization Failure'
      }
    end
  end
end
