class Api::UserRoutesShoesController < ApplicationController
  def create
    @urs = UserRouteShoe.new(
      user_id: params[:user_id],
      route_id: params[:route_id],
      shoe_id: params[:shoe_id]
      )
    @urs.save

    @shoe = UserRouteShoe.last.shoe
    p '*' * 50
    p @shoe
    p '*' * 50

    @urs.shoe.mileage = @urs.route.distance.to_i + @urs.shoe.mileage.to_i
    p '*' * 50
    p @urs.shoe.mileage
    p '*' * 50
    @shoe.save
    render 'show.json.jb'
  end
end
