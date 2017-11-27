class ApplicationController < ActionController::Base
  before_action :setup_connection
  protect_from_forgery with: :exception

  def setup_connection
    @connection ||= Faraday.new(Figaro.env.base_url)
    @connection.headers['Authorization'] = :Token, Figaro.env.iron_api_key
    @connection.headers['Content-Type'] = 'application/json'
    @connection.headers['Content-Length'] = '1024'
  end

end
