# frozen_string_literal: true

# Authenticate and destroy sessions
class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action only: [:create] do
    params.permit(:username, :password)
  end

  def index; end
  # /user/authenticate

  def create
    url = '/user/authenticate/'
    print 'hey guys how you doing'
    user = @connection.post url, request.body
  end

  def destroy; end

end

