class Api::ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
    render 'index.json.jb'
  end
  def show
    @shoe = Shoe.find_by(id: params[:id])
    render 'show.json.jb'
    
  end
  def create
    @shoe = Shoe.create(
      description: params[:description],
      mileage: params[:mileage],
      active: params[:active],
      year_purchased: params[:year_purchased]
      )
    render 'show.json.jb'
  end
  def update
    @shoe = Shoe.find_by(id: params[:id])
    # @shoe.description = params[:description] || @shoe.description
    @shoe.mileage = params[:mileage] || @shoe.mileage
    @shoe.active = params[:active] || @shoe.active
    # @shoe.year_purchased = params[:year_purchased] || @shoe.year_purchased
    @shoe.save
    render 'show.json.jb'
  end
end
