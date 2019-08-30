class Api::RacesController < ApplicationController
  def index
    @races = Race.all
    render 'index.json.jb'
  end
  def show
    @race = Race.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
