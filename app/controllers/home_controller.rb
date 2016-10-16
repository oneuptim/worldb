class HomeController < ApplicationController
  def index
    render json: { worldb: { version: '0.1.0' }}, status: :ok
  end
end
