class Api::UserRoutesShoesController < ApplicationController
  def index
    @urs = UserRouteShoe.all
    if current_user
      @urs = current_user.user_route_shoes
    else
      @urs = []
    end
    render 'index.json.jb'
  end
  def create
    @urs = UserRouteShoe.new(
      user_id: current_user.id,
      route_id: params[:route_id],
      shoe_id: params[:shoe_id]
      )
    p '*' * 50
    p current_user
    p '*' * 50
    
    @urs.save

    @shoe = UserRouteShoe.last.shoe
    p '*' * 50
    p @shoe
    p '*' * 50

    @urs.shoe.mileage = @urs.route.distance.to_i + @urs.shoe.mileage.to_i
    p '*' * 50
    p @urs.shoe.mileage.to_i
    p '*' * 50
    @shoe.save
    p @shoe.mileage.to_i
    render 'show.json.jb'
  end
end
