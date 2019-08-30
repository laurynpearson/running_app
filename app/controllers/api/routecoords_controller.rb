class Api::RoutecoordsController < ApplicationController
  def index
    @coords = RouteCoord.all
    render 'index.json.jb'
  end
  def create
    @coord = RouteCoord.new(
      longitude: params[:longitude],
      latitude: params[:latitude],
      route_id: params[:route_id]
      )
    binding.pry
    @coord.save
    render 'show.json.jb'
  end
end
