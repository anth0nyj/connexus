class WelcomeController < ApplicationController
  def index
    render json: { status: 200, message: "Community API" }
  end
end
