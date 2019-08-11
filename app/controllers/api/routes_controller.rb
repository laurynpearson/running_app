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
    render 'show.json.jb'
  end
end
