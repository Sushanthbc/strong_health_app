class SessionsController < ApplicationController
  before_action :authorize, except: [:authentication, :index]

  def index
    # TODO: render the page
  end

  def new
    @session = User.new
  end

  def create
    # TODO: create new users for accounts
  end

  def destroy
    # TODO: Build session destroy here.
  end

  def authentication
    if authentication_params
      username = params[:username]
      password = params[:password]
      if !username.blank? && !password.blank?
        user = User.find_by_username(username)
        if user && user.authenticate(password)
          session[:user_id] = user.id
        else
          flash['error'] = 'Please check your credentials and try again'
        end
      else
        flash['error'] = 'Username or Password field cannot be empty'
      end
    else
      logger.error 'Looks like someone tampered with params'
    end
    redirect_to root_path
  end

  private

  def authentication_params
    return params.permit(:username, :password)
  end

end
