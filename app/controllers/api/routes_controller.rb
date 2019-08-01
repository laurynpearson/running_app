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
      location: params[:location],
      distance: params[:distance],
      description: params[:description],
      duration: params[:duration]
      )
    render 'show.json.jb'
  end
end
