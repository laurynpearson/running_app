class Api::RoutesController < ApplicationController
  def index
    @routes = Route.all
    render 'index.json.jb'
  end
  def show
    @route = Route.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def create
    @route = Route.create(
      city: params[:city],
      distance: params[:distance],
      name: params[:name],
      duration: params[:duration]
      )
    # binding.pry
    @route = Route.find_by(id: Route.last.id)
    p "*" * 50
    p @route
    p "*" * 50
    o = 0
    features = params["coordinates"][:geometry][:coordinates]
    while o < features.length
      i = 0
      @longitude = features[o][i]
      i += 1
      @latitude = features[o][i]

      @coord = RouteCoord.create(
        longitude: @longitude,
        latitude: @latitude,
        route_id: @route.id
        )
      o += 1
    end
    render 'show.json.jb'
  end
end
