class Api::RacesController < ApplicationController
  def index
    @races = Race.all
    # upcoming = []
    # archived = []
    # @races.map do |race|
    #   if race.friendly_date > Time.now
    #     upcoming << race
    #   else
    #     archived << race
    #   end
    # end
    # p "*" * 50
    # p upcoming
    # p "$" * 50
    # p archived
    render 'index.json.jb'
  end
  def show
    @race = Race.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
