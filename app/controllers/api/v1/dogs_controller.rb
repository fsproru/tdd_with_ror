class Api::V1::DogsController < ApplicationController
  def index
    render json: Dog.all
  end
end
